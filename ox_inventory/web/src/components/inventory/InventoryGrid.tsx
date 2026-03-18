import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';

const PAGE_SIZE = 30;

const SectionIcon: React.FC<{ type: string }> = ({ type }) => {
  if (type === 'hotbar') {
    return (
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M20 4H4C2.9 4 2 4.9 2 6V18C2 19.1 2.9 20 4 20H20C21.1 20 22 19.1 22 18V6C22 4.9 21.1 4 20 4ZM8 18H4V6H8V18ZM14 18H10V6H14V18ZM20 18H16V6H20V18Z" fill="currentColor"/>
      </svg>
    );
  }
  return (
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M20 6H12L10 4H4C2.9 4 2 4.9 2 6V18C2 19.1 2.9 20 4 20H20C21.1 20 22 19.1 22 18V8C22 6.9 21.1 6 20 6ZM20 18H4V6H9.17L11.17 8H20V18Z" fill="currentColor"/>
    </svg>
  );
};

const getTitle = (label: string, type: string): string => {
  if (type === 'hotbar' || label === 'hotbar') return 'Hotbar';
  if (type === 'player') return 'Pockets';
  return label;
};

const getSubtitle = (label: string, type: string): string => {
  if (type === 'hotbar' || label === 'hotbar') return 'Quickly equip your items';
  if (type === 'player') return 'Items on your character';
  if (type === 'shop') return 'Browse available items';
  if (type === 'crafting') return 'Craft new items';
  return 'Store necessary assets';
};

const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  const weightPercent = inventory.maxWeight ? Math.min((weight / inventory.maxWeight) * 100, 100) : 0;

  return (
    <>
    {inventory.label !== 'hotbar' && (
      <div
        className="inventory-grid-wrapper"
        data-shop={inventory.type === 'shop' ? 'true' : undefined}
        style={{
          pointerEvents: isBusy ? 'none' : 'auto',
          height: (inventory.type === 'player' ? '50.4vh' : '71vh'),
          overflow: 'hidden',
        }}
      >
        <div className="inventory-head">
          <div className="inventory-head-left">
            <div className="inventory-head-icon">
              <SectionIcon type={inventory.type} />
            </div>
            <div className="inventory-head-titles">
              <span className="inventory-head-title">{getTitle(inventory.label || '', inventory.type)}</span>
              <span className="inventory-head-subtitle">{getSubtitle(inventory.label || '', inventory.type)}</span>
            </div>
          </div>
          {inventory.maxWeight && (
            <div className="inventory-head-right">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style={{ opacity: 0.5 }}>
                <path d="M18 8H17V6C17 3.24 14.76 1 12 1C9.24 1 7 3.24 7 6V8H6C4.9 8 4 8.9 4 10V20C4 21.1 4.9 22 6 22H18C19.1 22 20 21.1 20 20V10C20 8.9 19.1 8 18 8ZM12 17C10.9 17 10 16.1 10 15C10 13.9 10.9 13 12 13C13.1 13 14 13.9 14 15C14 16.1 13.1 17 12 17ZM15 8H9V6C9 4.34 10.34 3 12 3C13.66 3 15 4.34 15 6V8Z" fill="white"/>
              </svg>
              <span className="inventory-head-weight">{weight / 1000} / {inventory.maxWeight / 1000} kg</span>
              <div className="inventory-weight-segments">
                {[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) => (
                  <div
                    key={i}
                    className={`weight-segment ${weightPercent > i * 10 ? 'weight-segment-filled' : ''}`}
                  />
                ))}
              </div>
            </div>
          )}
        </div>
        <div
          className="inventory-grid-container"
          style={inventory.type === 'shop' && inventory.items.length > 15 ? {
            maxHeight: 'calc(3 * (11.3333vh + 0.22vh) + 2 * 0.3125vw)',
            overflowY: 'auto',
            overflowX: 'hidden',
            scrollbarWidth: 'none',
            msOverflowStyle: 'none',
          } : {}}
        >
          <>
            {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                hotbar={inventory.label === 'hotbar'}
              />
            ))}
          </>
        </div>
      </div>
      )}

      {inventory.label == 'hotbar' && (
           <div
           className="inventory-grid-wrapper inventory-grid-wrapper-hotbar"
           style={{
            pointerEvents: isBusy ? 'none' : 'auto',
            height: 'auto',
            overflow: 'visible',
           }}
         >
         <div className="inventory-head">
           <div className="inventory-head-left">
             <div className="inventory-head-icon">
               <SectionIcon type="hotbar" />
             </div>
             <div className="inventory-head-titles">
               <span className="inventory-head-title">{getTitle(inventory.label || '', inventory.type)}</span>
               <span className="inventory-head-subtitle">Quickly equip your items</span>
             </div>
           </div>
         </div>
         <div className="inventory-grid-container inventory-grid-hotbar" ref={containerRef}>
           <>
           {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                hotbar={inventory.label === 'hotbar'}
              />
            ))}
           </>
         </div>
       </div>
      )}
    </>
  );
};

export default InventoryGrid;
