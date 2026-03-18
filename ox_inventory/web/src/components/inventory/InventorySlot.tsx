import React, { useCallback, useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch } from '../../store';
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

// Hover info panel for item details
const SlotHoverInfo: React.FC<{ item: SlotWithItem }> = ({ item }) => {
  const itemData = Items[item.name];
  const label = item.metadata?.label || itemData?.label || item.name;
  const isWeapon = item.name?.startsWith('weapon_');
  const isAmmo = item.name?.startsWith('ammo_');
  const itemType = isWeapon ? 'Weapon' : isAmmo ? 'Ammo' : 'Item';
  const ammoName = itemData?.ammoName && Items[itemData.ammoName]?.label;

  const rows: { label: string; value: string | number }[] = [];

  if (item.durability !== undefined) {
    rows.push({ label: 'Durability', value: Math.floor(item.durability) });
  }
  if (item.metadata?.ammo !== undefined) {
    rows.push({ label: 'Ammo', value: item.metadata.ammo });
  }
  if (ammoName) {
    rows.push({ label: 'Ammo type', value: ammoName });
  }
  if (item.metadata?.serial) {
    rows.push({ label: 'Serial number', value: item.metadata.serial });
  }
  if (item.weight > 0) {
    rows.push({
      label: 'Weight',
      value: item.weight >= 1000
        ? `${(item.weight / 1000).toLocaleString('en-us', { minimumFractionDigits: 1 })}kg`
        : `${item.weight}g`
    });
  }

  return (
    <div className="slot-hover-info" onClick={(e) => e.stopPropagation()}>
      {/* Header with image + name */}
      <div className="slot-hover-header">
        <div className="slot-hover-thumb">
          <img
            src={getItemUrl(item as SlotWithItem)}
            alt={label}
          />
        </div>
        <div className="slot-hover-name-area">
          <span className="slot-hover-name">{label}</span>
          <span className="slot-hover-type">{itemType}</span>
        </div>
      </div>

      {/* Info rows */}
      {rows.length > 0 && (
        <div className="slot-hover-rows">
          {rows.map((row, i) => (
            <div key={i} className="slot-hover-row">
              <span className="slot-hover-row-label">{row.label}:</span>
              <span className="slot-hover-row-value">{row.value}</span>
            </div>
          ))}
        </div>
      )}

      {/* Description */}
      {(item.metadata?.description || itemData?.description) && (
        <div className="slot-hover-desc">
          {item.metadata?.description || itemData?.description}
        </div>
      )}
    </div>
  );
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
    setShowInfo(false);
    if (hoverTimerRef.current) {
      clearTimeout(hoverTimerRef.current);
      hoverTimerRef.current = null;
    }
    if (inventoryType !== 'player' || !isSlotWithItem(item)) return;
    dispatch(openTooltip({ item, inventoryType, coords: { x: event.clientX, y: event.clientY } }));
    dispatch(openContextMenu({ item }));
  };

  const handleClick = (event: React.MouseEvent<HTMLDivElement>) => {
    dispatch(closeTooltip());
    if (timerRef.current) clearTimeout(timerRef.current);

    if (inventoryType === 'shop' && isSlotWithItem(item)) {
      if (event.detail === 2 || event.shiftKey) {
        const simulatedSource: DragSource = {
          item: { name: item.name, slot: item.slot },
          inventory: 'shop'
        };
        const addToCartEvent = new CustomEvent('addToShoppingCart', { detail: simulatedSource });
        window.dispatchEvent(addToCartEvent);
        return;
      }
    }

    if (event.ctrlKey && isSlotWithItem(item) && inventoryType !== 'shop' && inventoryType !== 'crafting') {
      onDrop({ item: item, inventory: inventoryType });
    } else if (event.altKey && isSlotWithItem(item) && inventoryType === 'player') {
      onUse(item);
    }
  };

  const refs = useMergeRefs([connectRef, ref]);
  const [hovered, setHovered] = React.useState(false);
  const [showInfo, setShowInfo] = React.useState(false);
  const hoverTimerRef = useRef<number | null>(null);

  if (inventoryType === 'player' && item.slot <= 5 && !hotbar) {
    return (<></>);
  }

  const hasItem = isSlotWithItem(item);

  const onMouseEnterSlot = () => {
    setHovered(true);
    if (hasItem && !isDragging) {
      hoverTimerRef.current = window.setTimeout(() => {
        setShowInfo(true);
      }, 400) as unknown as number;
    }
  };

  const onMouseLeaveSlot = () => {
    setHovered(false);
    setShowInfo(false);
    if (hoverTimerRef.current) {
      clearTimeout(hoverTimerRef.current);
      hoverTimerRef.current = null;
    }
  };

  // Hide info when dragging starts
  if (isDragging && showInfo) {
    setShowInfo(false);
  }

  return (
    <div
    ref={refs}
    onContextMenu={handleContext}
    onClick={handleClick}
    className={`inventory-slot-wrapper ${hasItem ? 'has-item' : ''} ${isOver ? 'is-drop-target' : ''} ${hovered ? 'is-hovered' : ''}`}
    style={{
      filter:
        !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType)
          ? 'brightness(80%) grayscale(100%)'
          : undefined,
      opacity: isDragging ? 0.4 : 1.0,
    }}
    onMouseEnter={onMouseEnterSlot}
    onMouseLeave={onMouseLeaveSlot}
    >
    <div
      className={`inventory-slot ${hasItem ? 'inventory-slot-filled' : ''}`}
      style={{
        filter:
          !canPurchaseItem(item, { type: inventoryType, groups: inventoryGroups }) || !canCraftItem(item, inventoryType)
            ? 'brightness(80%) grayscale(100%)'
            : undefined,
        opacity: isDragging ? 0.4 : 1.0,
        backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
      }}
    >
      {inventoryType === 'player' && item.slot <= 5 && (
        <div className="inventory-slot-number">
          <svg viewBox="0 0 32 36" fill="none" xmlns="http://www.w3.org/2000/svg" className="slot-hex-svg">
            <path d="M14.268 1.5C15.0378 1.056 15.9622 1.056 16.732 1.5L28.1244 8C28.8942 8.444 29.3564 9.262 29.3564 10.15V25.15C29.3564 26.038 28.8942 26.856 28.1244 27.3L16.732 33.8C15.9622 34.244 15.0378 34.244 14.268 33.8L2.8756 27.3C2.1058 26.856 1.6436 26.038 1.6436 25.15V10.15C1.6436 9.262 2.1058 8.444 2.8756 8L14.268 1.5Z" fill="rgba(0, 140, 210, 0.3)" stroke="rgba(0, 174, 255, 0.5)" strokeWidth="1.2"/>
          </svg>
          <span className="slot-hex-num">{item.slot}</span>
        </div>
      )}

      {hasItem && item.count && (
        <div className="slot-count-badge">
          <span>{item.count.toLocaleString('en-us')}x</span>
        </div>
      )}

      {hasItem && (
        <div className="item-slot-wrapper">
          <div
            className={
              inventoryType === 'player' && item.slot <= 5 ? 'item-hotslot-header-wrapper' : 'item-slot-header-wrapper'
            }
          >
            <div className="item-slot-info-wrapper">
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
                      <div className="item-slot-price-wrapper">
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

              </div>
          </div>
      )}
    </div>

    {/* Hover info panel */}
    {showInfo && hasItem && !isDragging && (
      <SlotHoverInfo item={item as SlotWithItem} />
    )}
  </div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));
