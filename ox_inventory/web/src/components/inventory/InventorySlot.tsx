import React, { useCallback, useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch } from '../../store';
import WeightBar from '../utils/WeightBar';
import { onDrop } from '../../dnd/onDrop';
import { onBuy } from '../../dnd/onBuy';
import { Items } from '../../store/items';
import { canCraftItem, canPurchaseItem, getItemUrl, isSlotWithItem } from '../../helpers';
import { onUse } from '../../dnd/onUse';
import { Locale } from '../../store/locale';
import { onCraft } from '../../dnd/onCraft';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { closeTooltip, openTooltip} from '../../store/tooltip';
import { openContextMenu } from '../../store/contextMenu';
import { useMergeRefs } from '@floating-ui/react';

interface SlotProps {
  inventoryId: Inventory['id'];
  inventoryType: Inventory['type'];
  inventoryGroups: Inventory['groups'];
  item: Slot;
  hotbar?: boolean;
}

const getRarityColor = (rarity: string) => {
  switch (rarity) {
    case 'common':
      return 'rgba(98, 98, 98, 0.4)'; // Common
    case 'uncommon':
      return 'rgba(52, 158, 38, 0.46)'; // Uncommon (bright green)
    case 'rare':
      return 'rgba(31, 103, 171, 0.46)'; // Rare (bright blue)
    case 'epic':
      return 'rgba(163, 53, 238, 0.46)'; // Epic (bright purple)
    case 'legendary':
      return 'rgba(255, 128, 0, 0.46)'; // Legendary (orange-gold)
    case 'special':
      return 'rgba(255, 255, 255, 0.66)'; // Special (white)
    default:
      return 'rgba(98, 98, 98, 0.46)'; // Default (common gray)
  }
};

const getRarityTextColor = (rarity: string) => {
  switch (rarity) {
    case 'common':
      return 'rgba(180, 180, 180, 0.85)'; // Common - lighter gray for text visibility
    case 'uncommon':
      return 'rgba(52, 158, 38, 0.46)'; // Uncommon (bright green)
    case 'rare':
      return 'rgba(31, 103, 171, 0.46)'; // Rare (bright blue)
    case 'epic':
      return 'rgba(163, 53, 238, 0.46)'; // Epic (bright purple)
    case 'legendary':
      return 'rgba(255, 128, 0, 0.46)'; // Legendary (orange-gold)
    case 'special':
      return 'rgba(255, 255, 255, 0.66)'; // Special (white)
    default:
      return 'rgba(180, 180, 180, 0.85)'; // Default (common gray) - lighter gray for text visibility
  }
};

const InventorySlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = (
  { item, inventoryId, inventoryType, inventoryGroups, hotbar },
  ref
) => {
  const manager = useDragDropManager();
  const dispatch = useAppDispatch();
  const timerRef = useRef<number | null>(null);

  const canDrag = useCallback(() => {
    return canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) && canCraftItem(item, inventoryType);
  }, [item, inventoryType, inventoryGroups]);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP) || (inventoryType === InventoryType.SHOP && isSlotWithItem(item))
          ? {
              inventory: inventoryType,
              item: {
                name: item.name,
                slot: item.slot,
              },
              image: item?.name && `url(${getItemUrl(item) || 'none'}`,
            }
          : null,
      canDrag,
    }),
    [inventoryType, item]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
      drop: (source) => {
        dispatch(closeTooltip());
        switch (source.inventory) {
          case InventoryType.SHOP:
            // Disabled - shop items must go through shopping cart
            return;
          case InventoryType.CRAFTING:
            onCraft(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
          default:
            onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
            break;
        }
      },
      canDrop: (source) =>
        (source.item.slot !== item.slot || source.inventory !== inventoryType) &&
        inventoryType !== InventoryType.SHOP &&
        inventoryType !== InventoryType.CRAFTING &&
        source.inventory !== InventoryType.SHOP,
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
    if (inventoryType !== 'player' || !isSlotWithItem(item)) return;
    dispatch(openTooltip({ item, inventoryType, coords: { x: event.clientX, y: event.clientY } }));
    dispatch(openContextMenu({ item }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(timerRef.current);
    
    // Handle shop item clicks (double-click or shift+click to add to cart)
    if (inventoryType === 'shop' && isSlotWithItem(item)) {
      if (event.detail === 2 || event.shiftKey) {
        // Create a drag source object to simulate the drop behavior
        const simulatedSource: DragSource = {
          item: {
            name: item.name,
            slot: item.slot,
          },
          inventory: 'shop'
        };
        
        // Dispatch custom event with the simulated source
        const addToCartEvent = new CustomEvent('addToShoppingCart', {
          detail: simulatedSource
        });
        window.dispatchEvent(addToCartEvent);
        return;
      }
    }
    
    // Original click handlers for non-shop items
    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
      onUse(item);
    }
  };

  const refs = useMergeRefs([connectRef, ref]);
  const [hovered, setHovered] = React.useState(false);
  if (inventoryType === 'player' && item.slot <= 5 && !hotbar) {
    return (<></>);
  }

  return (
    <div
    ref={refs}
    onContextMenu={handleContext}
    onClick={handleClick}
    className="inventory-slot-wrapper"
    style={{
      filter:
        !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType)
          ? 'brightness(80%) grayscale(100%)'
          : undefined,
      opacity: isDragging ? 0.4 : 1.0,
      backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
      borderRadius: '.2167vw',
      border: isOver ? '1px solid rgba(168, 85, 247, 0.6)' : '',
    }}

    {...(isSlotWithItem(item) && { style: {
      width: '100%',
      height: '100%',
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
      boxShadow: '0px 0px 20.8px -8px rgba(255, 255, 255, 0.25)',
      filter: 'drop-shadow(0 0 0.3vw rgba(255, 255, 255, 0.3))',
      borderRadius: '.2167vw',

     }})}

    onMouseOver={() => setHovered(true)}
    onMouseLeave={() => setHovered(false)}
    >
    <div
      className="inventory-slot"
      style={{
        filter:
          !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType)
            ? 'brightness(80%) grayscale(100%)'
            : undefined,
        opacity: isDragging ? 0.4 : 1.0,
        backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
        width: '100%',
        height: '100%',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: 'rgba(141, 141, 141, 0.20)',
        boxShadow: `inset 0 0 10px ${getRarityColor(item.rarity || 'default')}`,
        border: `1px solid ${getRarityColor(item.rarity || 'default')}`,
        borderRadius: '.2167vw',

      }}
    >
      {inventoryType === 'player' && item.slot <= 5 && <div className="inventory-slot-number">{item.slot}</div>}
      {isSlotWithItem(item) && (
        <div
          className="item-slot-wrapper"
          onMouseEnter={() => {
            timerRef.current = window.setTimeout(() => {

            }, 500) as unknown as number;
          }}
          onMouseLeave={() => {

            if (timerRef.current) {
              clearTimeout(timerRef.current);
              timerRef.current = null;
            }
          }}
        >
          <div
            className={
              inventoryType === 'player' && item.slot <= 5 ? 'item-hotslot-header-wrapper' : 'item-slot-header-wrapper'
            }
          >
            <div className="item-slot-info-wrapper">
              <p className="rarityText" style={{ color: getRarityTextColor(item.rarity || 'default') }}>
                {item.rarity ? item.rarity.toUpperCase() : 'COMMON'}
              </p>
              <p className="countText">
                {item.count ? item.count.toLocaleString('en-us') + `x` : ''}
              </p>
            </div>
          </div>
          <div>
          {inventoryType === 'shop' && item?.price !== undefined && (
              <>
                {item?.currency !== 'money' && item.currency !== 'black_money' && item.price > 0 && item.currency ? (
                  <div className="item-slot-currency-wrapper">
                    <img
                      src={item.currency ? getItemUrl(item.currency) : 'none'}
                      alt="item-image"
                      style={{
                        imageRendering: '-webkit-optimize-contrast',
                        height: 'auto',
                        width: '2vh',
                        backfaceVisibility: 'hidden',
                        transform: 'translateZ(0)',
                      }}
                    />
                    <p>{item.price.toLocaleString('en-uk')}</p>
                  </div>
                ) : (
                  <>
                    {item.price > 0 && (
                      <div
                        className="item-slot-price-wrapper"
                        style={{ color: item.currency === 'money' || !item.currency ? '#FFF' : '#FFF' }}
                      >
                        <p>
                          {Locale.$ || '£ '}
                          {item.price.toLocaleString('en-uk')}
                        </p>
                      </div>
                    )}
                  </>
                )}
              </>
            )}
            {inventoryType !== 'shop' && item?.durability !== undefined && (
              <div style={{ position: 'absolute', bottom: '0.2rem', left: '0.2rem', right: '0.2rem', zIndex: 10 }}>
                <WeightBar percent={item.durability} durability rarity={item.rarity} />
              </div>
            )}

                <div 
                  className="inventory-slot-label-box" 
                  style={{ 
                    display: 'flex', 
                    alignItems: 'center', 
                    gap: '0.5rem',
                    marginBottom: (() => {
                      if (inventoryType === 'shop' || item?.durability === undefined) return '0';
                      const label = item.metadata?.label || Items[item.name]?.label || item.name;
                      const [first, ...rest] = label.split(' ');
                      // Single line labels need less margin, multi-line labels need more
                      return rest.length > 0 ? '0.8rem' : '0.25rem';
                    })()
                  }}
                >
                  {/* Label */}
                  <div className="inventory-slot-label-text" style={{ whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>
                    {(() => {
                      const label =
                        item.metadata?.label || Items[item.name]?.label || item.name;
                      const [first, ...rest] = label.split(' ');
                      return (
                        <>
                          {first}
                          {rest.length > 0 && <br />}
                          {rest.join(' ')}
                        </>
                      );
                    })()}
                  </div>

                  {/* Weight */}
                  <p
                    className="weightText"
                    style={{
                      position: 'relative',
                      top: '0.1rem',
                      right: '0.3rem',
                      whiteSpace: 'nowrap',
                      margin: 0,
                    }}
                  >
                    {item.weight > 0
                      ? item.weight >= 1000
                        ? `${(item.weight / 1000).toLocaleString('en-us', {
                            minimumFractionDigits: 2,
                          })}kg`
                        : `${item.weight.toLocaleString('en-us')}g`
                      : ''}
                  </p>
                </div>
              </div>
          </div>
      )}
    </div>
  </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
