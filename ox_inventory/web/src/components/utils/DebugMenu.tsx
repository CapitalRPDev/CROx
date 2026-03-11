import React, { useState } from 'react';
import { isEnvBrowser } from '../../utils/misc';
import { useAppDispatch, useAppSelector } from '../../store';
import { setupInventory } from '../../store/inventory';
import { selectRightInventory } from '../../store/inventory';

const DebugMenu: React.FC = () => {
  const [isOpen, setIsOpen] = useState(false);
  const dispatch = useAppDispatch();
  const rightInventory = useAppSelector(selectRightInventory);

  // Only show in browser mode
  if (!isEnvBrowser()) return null;

  const toggleCrafting = () => {
    dispatch(setupInventory({
      rightInventory: {
        ...rightInventory,
        type: 'crafting',
        id: 'crafting',
        label: 'Crafting',
        slots: 9,
        maxWeight: 5000,
        backpackDisabled: false,
        items: [
          {
            slot: 1,
            name: 'lockpick',
            rarity: 'epic',
            weight: 500,
            count: 1,
            metadata: {
              description: 'Simple lockpick that breaks easily and can pick basic door locks',
            },
          },
        ],
      },
    }));
  };

  const toggleShop = () => {
    const debugItems = [
      { slot: 1, name: 'water', rarity: 'common', weight: 100, count: 1, metadata: { description: 'A bottle of water' } },
      { slot: 2, name: 'burger', rarity: 'common', weight: 200, count: 1, metadata: { description: 'A delicious burger' } },
      { slot: 3, name: 'lockpick', rarity: 'epic', weight: 500, count: 1, metadata: { description: 'Simple lockpick' } },
      { slot: 4, name: 'iron', rarity: 'uncommon', weight: 3000, count: 5, metadata: { description: 'Iron ore' } },
      { slot: 5, name: 'copper', rarity: 'rare', weight: 100, count: 12, metadata: { description: 'Copper ore' } },
      { slot: 6, name: 'water', rarity: 'common', weight: 100, count: 1, metadata: { description: 'A bottle of water' } },
      { slot: 7, name: 'burger', rarity: 'common', weight: 200, count: 1, metadata: { description: 'A delicious burger' } },
      { slot: 8, name: 'lockpick', rarity: 'epic', weight: 500, count: 1, metadata: { description: 'Simple lockpick' } },
      { slot: 9, name: 'iron', rarity: 'uncommon', weight: 3000, count: 5, metadata: { description: 'Iron ore' } },
      { slot: 10, name: 'copper', rarity: 'rare', weight: 100, count: 12, metadata: { description: 'Copper ore' } },
      { slot: 11, name: 'water', rarity: 'common', weight: 100, count: 1, metadata: { description: 'A bottle of water' } },
      { slot: 12, name: 'burger', rarity: 'common', weight: 200, count: 1, metadata: { description: 'A delicious burger' } },
      { slot: 13, name: 'lockpick', rarity: 'epic', weight: 500, count: 1, metadata: { description: 'Simple lockpick' } },
      { slot: 14, name: 'iron', rarity: 'uncommon', weight: 3000, count: 5, metadata: { description: 'Iron ore' } },
      { slot: 15, name: 'copper', rarity: 'rare', weight: 100, count: 12, metadata: { description: 'Copper ore' } },
      { slot: 16, name: 'water', rarity: 'common', weight: 100, count: 1, metadata: { description: 'A bottle of water' } },
      { slot: 17, name: 'burger', rarity: 'common', weight: 200, count: 1, metadata: { description: 'A delicious burger' } },
      { slot: 18, name: 'lockpick', rarity: 'epic', weight: 500, count: 1, metadata: { description: 'Simple lockpick' } },
      { slot: 19, name: 'iron', rarity: 'uncommon', weight: 3000, count: 5, metadata: { description: 'Iron ore' } },
      { slot: 20, name: 'copper', rarity: 'rare', weight: 100, count: 12, metadata: { description: 'Copper ore' } },
    ];
    
    dispatch(setupInventory({
      rightInventory: {
        ...rightInventory,
        type: 'shop',
        id: 'shop',
        label: 'Shop',
        slots: 20,
        maxWeight: 5000,
        backpackDisabled: false,
        items: debugItems,
      },
    }));
  };

  return (
    <div
      style={{
        position: 'fixed',
        top: '10px',
        right: '10px',
        zIndex: 10000,
        fontFamily: 'Arial, sans-serif',
      }}
    >
      {!isOpen ? (
        <button
          onClick={() => setIsOpen(true)}
          style={{
            padding: '8px 16px',
            backgroundColor: '#4CAF50',
            color: 'white',
            border: 'none',
            borderRadius: '4px',
            cursor: 'pointer',
            fontSize: '14px',
            fontWeight: 'bold',
          }}
        >
          Debug Menu
        </button>
      ) : (
        <div
          style={{
            backgroundColor: 'rgba(0, 0, 0, 0.9)',
            border: '2px solid #4CAF50',
            borderRadius: '8px',
            padding: '16px',
            minWidth: '200px',
            boxShadow: '0 4px 6px rgba(0, 0, 0, 0.3)',
          }}
        >
          <div
            style={{
              display: 'flex',
              justifyContent: 'space-between',
              alignItems: 'center',
              marginBottom: '12px',
            }}
          >
            <h3
              style={{
                margin: 0,
                color: '#4CAF50',
                fontSize: '16px',
                fontWeight: 'bold',
              }}
            >
              Debug Menu
            </h3>
            <button
              onClick={() => setIsOpen(false)}
              style={{
                background: 'none',
                border: 'none',
                color: '#fff',
                fontSize: '20px',
                cursor: 'pointer',
                padding: '0',
                width: '24px',
                height: '24px',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
              }}
            >
              ×
            </button>
          </div>
          
          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <button
              onClick={toggleCrafting}
              style={{
                padding: '10px 16px',
                backgroundColor: rightInventory.type === 'crafting' ? '#4CAF50' : '#555',
                color: 'white',
                border: 'none',
                borderRadius: '4px',
                cursor: 'pointer',
                fontSize: '14px',
                fontWeight: 'bold',
                transition: 'background-color 0.2s',
              }}
              onMouseEnter={(e) => {
                if (rightInventory.type !== 'crafting') {
                  e.currentTarget.style.backgroundColor = '#666';
                }
              }}
              onMouseLeave={(e) => {
                if (rightInventory.type !== 'crafting') {
                  e.currentTarget.style.backgroundColor = '#555';
                }
              }}
            >
              {rightInventory.type === 'crafting' ? '✓ Crafting Mode' : 'Crafting Mode'}
            </button>
            
            <button
              onClick={toggleShop}
              style={{
                padding: '10px 16px',
                backgroundColor: rightInventory.type === 'shop' ? '#4CAF50' : '#555',
                color: 'white',
                border: 'none',
                borderRadius: '4px',
                cursor: 'pointer',
                fontSize: '14px',
                fontWeight: 'bold',
                transition: 'background-color 0.2s',
              }}
              onMouseEnter={(e) => {
                if (rightInventory.type !== 'shop') {
                  e.currentTarget.style.backgroundColor = '#666';
                }
              }}
              onMouseLeave={(e) => {
                if (rightInventory.type !== 'shop') {
                  e.currentTarget.style.backgroundColor = '#555';
                }
              }}
            >
              {rightInventory.type === 'shop' ? '✓ Shop Mode' : 'Shop Mode'}
            </button>
          </div>
          
          <div
            style={{
              marginTop: '12px',
              paddingTop: '12px',
              borderTop: '1px solid #444',
              fontSize: '12px',
              color: '#aaa',
            }}
          >
            Current: {rightInventory.type || 'none'}
          </div>
        </div>
      )}
    </div>
  );
};

export default DebugMenu;

