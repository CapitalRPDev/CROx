import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';

const PAGE_SIZE = 30;

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
  return (
    <>
    {inventory.label !== 'hotbar' && (
      <div 
        className="inventory-grid-wrapper"
        data-shop={inventory.type === 'shop' ? 'true' : undefined}
        style={{
          pointerEvents: isBusy ? 'none' : 'auto',
          height: (inventory.type === 'player' ? '50.4vh' : '68.2963vh'),
          overflow: (inventory.label === 'hotbar' ? '' : 'auto'),
        }}
      >
        <div className="inventory-head">
          <div className="inventory-grid-header-wrapper">
          <p>{inventory.label}</p>
          </div>
          <div className='inventory-grid-header-bottom'>
             <div className='custom-weight-bar' style={{ clipPath: 'inset(0)' }}>
                <div className='bar' style={{
                   width: `${inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0}%`,
                   maxWidth: '100%',
                   clipPath: 'inset(0)',
                }}>
                  <svg style={{
                    position:'absolute',
                    left: 0,
                    top: 0,
                    width: '100%',
                    height: '100%',
                    maxWidth: '100%',
                    maxHeight: '100%',
                    overflow: 'hidden',
                  }} viewBox="0 0 68 10" fill="none" preserveAspectRatio="xMidYMid meet">
                    <rect x="59" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#fff" fillOpacity="1" />
                    <rect x="44" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#fff" fillOpacity="1"/>
                    <rect x="30" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#fff" fillOpacity="1"/>
                    <rect x="15" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#fff" fillOpacity="1"/>
                    <rect width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#fff" fillOpacity="1"/>
                  </svg>
                </div>
                  <svg style={{
                    position:'absolute',
                    top: '0',
                    left: 0,
                    width: '100%',
                    height: '100%',
                    maxWidth: '100%',
                    maxHeight: '100%',
                    overflow: 'hidden',
                  }} viewBox="0 0 68 10" fill="none" preserveAspectRatio="xMidYMid meet">
                    <rect x="59" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#8D8D8D" fillOpacity="0.2" />
                    <rect x="44" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#8D8D8D" fillOpacity="0.2"/>
                    <rect x="30" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#8D8D8D" fillOpacity="0.2"/>
                    <rect x="15" width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#8D8D8D" fillOpacity="0.2"/>
                    <rect width=".4688vw" height="0.8511vh" rx=".2344vw" fill="#8D8D8D" fillOpacity="0.2"/>
                  </svg>
              </div>

            {inventory.maxWeight && (
              <div style={{
                height: '100%',
                display:'flex',
                alignContent: 'center',
                justifyContent: 'center'
              }}>
                <p className='weight1'>{weight / 1000}/ </p><span className='weight2'> {inventory.maxWeight / 1000}kg</span>
              </div>
            )}
            </div>

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
           className="inventory-grid-wrapper"
           style={{
            pointerEvents: isBusy ? 'none' : 'auto',
            height: (inventory.type === 'player' ? '14vh' : '68.2963vh'),
            overflow: (inventory.label === 'hotbar' ? '' : 'auto'),
           }}
         >
         <div className="inventory-head">
         <div className="inventory-grid-header-wrapper">
          <p className='hotbar-title'>{inventory.label}</p>
          </div>
         </div>
         <div className="inventory-grid-container" ref={containerRef}>
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
