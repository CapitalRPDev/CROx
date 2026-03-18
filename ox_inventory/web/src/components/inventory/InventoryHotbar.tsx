import React, { useState } from 'react';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { Items } from '../../store/items';
import WeightBar from '../utils/WeightBar';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { SlotWithItem } from '../../typings';
import SlideUp from '../utils/transitions/SlideUp';

const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, 5);

  //stupid fix for timeout
  const [handle, setHandle] = useState<NodeJS.Timeout>();
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(false);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        {items.map((item) => (
          <div
            key={`hotbar-wrapper-${item.slot}`}
            className={`hotbar-slot-outer ${isSlotWithItem(item) ? 'hotbar-slot-filled' : ''}`}
          >
            <div
              className="hotbar-item-slot"
              style={{
                backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
              }}
              key={`hotbar-${item.slot}`}
            >
              {isSlotWithItem(item) && (
                <div className="item-slot-wrapper hotbar-slot-wrapper">
                    <div className="hotbar-count">
                      <p>{item.count ? item.count.toLocaleString('en-us') + `x` : ''}</p>
                    </div>
                </div>
              )}
            </div>
            {/* Hexagonal number badge */}
            <div className="hotbar-hex-badge">
              <svg viewBox="0 0 32 36" fill="none" xmlns="http://www.w3.org/2000/svg" className="hotbar-hex-svg">
                <path d="M14.268 1.5C15.0378 1.056 15.9622 1.056 16.732 1.5L28.1244 8C28.8942 8.444 29.3564 9.262 29.3564 10.15V25.15C29.3564 26.038 28.8942 26.856 28.1244 27.3L16.732 33.8C15.9622 34.244 15.0378 34.244 14.268 33.8L2.8756 27.3C2.1058 26.856 1.6436 26.038 1.6436 25.15V10.15C1.6436 9.262 2.1058 8.444 2.8756 8L14.268 1.5Z" className="hotbar-hex-path"/>
              </svg>
              <span className="hotbar-hex-number">{item.slot}</span>
            </div>
          </div>
        ))}
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;
