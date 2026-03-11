import { Inventory, SlotWithItem } from '../../typings';
import React, { Fragment, useMemo, useState } from 'react';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import ReactMarkdown from 'react-markdown';
import { useAppDispatch, useAppSelector } from '../../store';
import ClockIcon from '../utils/icons/ClockIcon';
import { getItemUrl } from '../../helpers';
import Divider from '../utils/Divider';
import { Menu, MenuItem } from '../utils/menu/Menu';
import InventoryContext from './InventoryContext';
import { closeTooltip } from '../../store/tooltip';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { onDrop } from '../../dnd/onDrop';
import { fetchNui } from '../../utils/fetchNui';
import { isSlotWithItem } from '../../helpers';
import { setClipboard } from '../../utils/setClipboard';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import WeightBar from '../utils/WeightBar';

interface DataProps {
  action: string;
  component?: string;
  slot?: number;
  serial?: string;
  id?: number;
}

interface Button {
  label: string;
  index: number;
  group?: string;
}

interface Group {
  groupName: string | null;
  buttons: ButtonWithIndex[];
}

interface ButtonWithIndex extends Button {
  index: number;
}

interface GroupedButtons extends Array<Group> {}

const SlotTooltip: React.ForwardRefRenderFunction<
  HTMLDivElement,
  { item: SlotWithItem; inventoryType: Inventory['type']; style: React.CSSProperties; coords: { x: number; y: number } }
> = ({ item, inventoryType, style, coords }, ref) => {
  const additionalMetadata = useAppSelector((state) => state.inventory.additionalMetadata);
  const itemData = useMemo(() => Items[item.name], [item]);
  const [showSlider, setShowSlider] = useState(false); // New state for slider visibility
  const ingredients = useMemo(() => {
    if (!item.ingredients) return null;
    return Object.entries(item.ingredients).sort((a, b) => a[1] - b[1]);
  }, [item]);
  const description = item.metadata?.description || itemData?.description;
  const ammoName = itemData?.ammoName && Items[itemData?.ammoName]?.label;
  let itemType = 'item';

  if (item?.name) {
    itemType = item?.name.startsWith('weapon_') ? 'weapon' : item?.name.startsWith('ammo_') ? 'ammo' : 'item';
  }

  const groupButtons = (buttons: any): GroupedButtons => {
    return buttons.reduce((groups: Group[], button: Button, index: number) => {
      if (button.group) {
        const groupIndex = groups.findIndex((group) => group.groupName === button.group);
        if (groupIndex !== -1) {
          groups[groupIndex].buttons.push({ ...button, index });
        } else {
          groups.push({
            groupName: button.group,
            buttons: [{ ...button, index }],
          });
        }
      } else {
        groups.push({
          groupName: null,
          buttons: [{ ...button, index }],
        });
      }
      return groups;
    }, []);
  };

  const dispatch = useAppDispatch();
  const itemAmount = useAppSelector(selectItemAmount);

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    event.target.valueAsNumber =
      isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0 ? 0 : Math.floor(event.target.valueAsNumber);
    dispatch(setItemAmount(event.target.valueAsNumber));
  };

  const handleClick = (data: DataProps) => {
    if (!item) return;
    dispatch(closeTooltip());

    switch (data && data.action) {
      case 'use':
        onUse({ name: item.name, slot: item.slot });
        break;
      case 'give':
        onGive({ name: item.name, slot: item.slot });
        break;
      case 'drop':
        isSlotWithItem(item) && onDrop({ item: item, inventory: 'player' });
        break;
      case 'remove':
        fetchNui('removeComponent', { component: data?.component, slot: data?.slot });
        break;
      case 'removeAmmo':
        fetchNui('removeAmmo', item.slot);
        break;
      case 'copy':
        setClipboard(data.serial || '');
        break;
      case 'custom':
        fetchNui('useButton', { id: (data?.id || 0) + 1, slot: item.slot });
        break;
      case 'split':
        fetchNui('splitItem', { slot: item.slot, amount: itemAmount });
        break;
    }
  };

  return (
    <>
      {!itemData ? (
        <div className="tooltip-wrapper" ref={ref} style={style}>
          <div className="tooltip-header-wrapper">
            <p>{item.name}</p>
          </div>
          <Divider />
        </div>
      ) : (
        <div
          style={{
            position: 'absolute',
            left: '0px',
            top: '0px',
            transform: `translate(${coords.x}px, ${coords.y}px)`,
            transitionProperty: 'opacity',
            transitionDuration: '200ms',
            translate: 'transformY(-100%)',
          }}
          className="tooltip-wrapper"
          ref={ref}
        >
          {/* Tooltip Header */}
          <div className="tooltip-header-wrapper">
            <div
              className="tooltip-header-box"
              style={{
                flexDirection: 'row',
                alignItems: 'flex-start',
              }}
            >
              <div className="header-title">
                <p className="tooltip-item-name">{item.metadata?.label || itemData.label || item.name}</p>
                <div className="tooltip-item-type-box">{itemType}</div>
              </div>
            </div>
          </div>

          {/* Description */}
          {description && (
            <div className="tooltip-description">
              <p className="tooltip-markdown">{description}</p>
            </div>
          )}

          {/* Slider */}
          {showSlider && (
            <div className="slider-container">
              <div className="slider-value" style={{ left: `${(itemAmount / item.count) * 100}%` }}>
                {itemAmount}
              </div>
              <input
                className="tooltip-slider"
                type="range"
                value={itemAmount}
                onChange={(e) => inputHandler(e)}
                min={1}
                max={item.count}
              />
            </div>
          )}

          {/* Actions */}
          <div className="tooltip-actions">
            <MenuItem onClick={() => handleClick({ action: 'use' })} label={Locale.ui_use || 'Use'} />
            <MenuItem onClick={() => handleClick({ action: 'give' })} label={Locale.ui_give || 'Give'} />
            <MenuItem onClick={() => handleClick({ action: 'drop' })} label={Locale.ui_drop || 'Drop'} />
            <MenuItem onClick={() => setShowSlider((prev) => !prev)} label={Locale.ui_split || 'Split'} />
            {item && item.metadata?.ammo > 0 && (
              <MenuItem onClick={() => handleClick({ action: 'removeAmmo' })} label={Locale.ui_remove_ammo} />
            )}
            {item && item.metadata?.serial && (
              <MenuItem onClick={() => handleClick({ action: 'copy', serial: item.metadata?.serial })} label={Locale.ui_copy} />
            )}
          </div>
        </div>
      )}
    </>
  );
};

export default React.forwardRef(SlotTooltip);
