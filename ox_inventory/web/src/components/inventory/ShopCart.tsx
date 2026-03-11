import React, { useEffect, useState, useMemo, useRef } from 'react';
import { useDrop } from 'react-dnd';
import { Inventory, DragSource, SlotWithItem } from '../../typings';
import { Locale } from '../../store/locale';
import { getItemUrl, getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { Items } from '../../store/items';
import { onBuy } from '../../dnd/onBuy';

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

const ShopCart: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const [sourcee, setSourcee] = useState<DragSource | null>(null);
  const [cartItems, setCartItems] = useState<{ 
    name: string; 
    quantity: number; 
    price: number; 
    slot: number; 
    currency: string; 
    rarity: string;
    weight: number;
    metadata?: any;
  }[]>([]);
  const [onlyCash, setOnlyCash] = useState<boolean>(false);
  const [onlyBlackMoney, setOnlyBlackMoney] = useState<boolean>(false);
  const [inventoryType, setInventoryType] = useState<string>('');

  const totalWeight = useMemo(() => {
    const items = cartItems.map(item => ({
      slot: item.slot,
      name: item.name,
      weight: item.weight * item.quantity,
      count: item.quantity,
    }));
    return Math.floor(getTotalWeight(items) * 1000) / 1000;
  }, [cartItems]);

  // Helper function to get the full item data from shop inventory
  const getShopItemData = (slot: number): SlotWithItem | undefined => {
    return inventory.items.find((item: any) => item.slot === slot) as SlotWithItem;
  };

  useEffect(() => {
    const handleAddToCart = (event: CustomEvent) => {
      const source = event.detail as DragSource;
      
      if (!sourcee) setSourcee(source);
      if (inventoryType === '') setInventoryType(source.inventory);
      
      const existingItem = cartItems.find((item) => item.name === source.item.name && item.slot === source.item.slot);
      const shopItem = getShopItemData(source.item.slot);
      
      if (existingItem) {
        setCartItems((prev) =>
          prev.map((item) =>
            item.name === source.item.name && item.slot === source.item.slot
              ? { ...item, quantity: item.quantity + 1 }
              : item
          )
        );
      } else {
        setCartItems((prev) => [
          ...prev,
          {
            name: source.item.name,
            quantity: 1,
            price: (shopItem?.price || 0),
            slot: source.item.slot,
            currency: (shopItem?.currency || 'money'),
            rarity: (shopItem?.rarity || 'common'),
            weight: (shopItem?.weight || 0),
            metadata: shopItem?.metadata
          }
        ]);
        
        if (shopItem?.currency && shopItem.currency !== 'money') setOnlyCash(true);
        if (shopItem?.currency === 'black_money') {
          setOnlyBlackMoney(true);
        }
      }
    };

    window.addEventListener('addToShoppingCart', handleAddToCart as EventListener);

    return () => {
      window.removeEventListener('addToShoppingCart', handleAddToCart as EventListener);
    };
  }, [cartItems, sourcee, inventoryType, inventory]);

  const [{ isOver }, drop] = useDrop({
    accept: 'SLOT',
    drop: (source: DragSource) => {
      if (source.inventory !== 'shop') return;
      
      if (!sourcee) setSourcee(source);
      if (inventoryType === '') setInventoryType(source.inventory);
      
      const existingItem = cartItems.find((item) => item.name === source.item.name && item.slot === source.item.slot);
      const shopItem = getShopItemData(source.item.slot);
      
      if (existingItem) {
        setCartItems((prev) =>
          prev.map((item) =>
            item.name === source.item.name && item.slot === source.item.slot
              ? { ...item, quantity: item.quantity + 1 }
              : item
          )
        );
      } else {
        setCartItems((prev) => [
          ...prev,
          {
            name: source.item.name,
            quantity: 1,
            price: (shopItem?.price || 0),
            slot: source.item.slot,
            currency: (shopItem?.currency || 'money'),
            rarity: (shopItem?.rarity || 'common'),
            weight: (shopItem?.weight || 0),
            metadata: shopItem?.metadata
          }
        ]);
        
        if (shopItem?.currency && shopItem.currency !== 'money') setOnlyCash(true);
        if (shopItem?.currency === 'black_money') {
          setOnlyBlackMoney(true);
        }
      }
    },
    collect: (monitor) => ({
      isOver: monitor.isOver(),
    }),
  });

  const handlePay = (type: string) => {
    if (!sourcee || cartItems.length === 0) return;
    
    onBuy(sourcee, { inventory: inventoryType, item: { slot: -1 } }, 0, type, cartItems);
    
    setCartItems([]);
    setOnlyCash(false);
    setOnlyBlackMoney(false);
  };

  // Helper function to get item image URL with metadata support
  const getCartItemImage = (item: any) => {
    if (item.metadata?.imageurl) {
      return item.metadata.imageurl;
    }
    if (item.metadata?.image) {
      return item.metadata.image.startsWith('http') 
        ? item.metadata.image 
        : getItemUrl(item.metadata.image);
    }
    return getItemUrl(item.name);
  };

  // Helper function to get item label with metadata support
  const getItemLabel = (item: any) => {
    if (item.metadata?.label) {
      return item.metadata.label;
    }
    if (Items[item.name]?.label) {
      return Items[item.name]?.label || '';
    }
    return item.name
      ?.replace(/[_-]/g, ' ')
      .replace(/\b\w/g, (char: string) => char.toUpperCase()) || '';
  };

  const totalCost = cartItems.reduce((acc, item) => acc + (item.price || 0) * item.quantity, 0);
  const totalCashCost = cartItems
    .filter((item) => item.currency !== 'money')
    .reduce((acc, item) => acc + (item.price || 0) * item.quantity, 0);

  return (
    <div
      ref={drop}
      className="inventory-grid-wrapper"
      style={{
        pointerEvents: isBusy ? 'none' : 'auto',
        height: 'auto',
        maxHeight: '80vh',
        overflow: 'visible',
        display: 'flex',
        flexDirection: 'column',
        border: isOver ? '1px solid rgba(168, 85, 247, 0.6)' : 'none',
        marginTop: '0',
        marginBottom: '0',
        width: '30vw',
        minWidth: '33vw',
      }}
    >
      <div className="inventory-head">
        <div className="inventory-grid-header-wrapper">
          <p>Shopping Cart</p>
        </div>
      </div>
      
      <div 
        className="inventory-grid-container" 
        style={{ 
          display: 'flex', 
          flexDirection: 'column', 
          gap: '0.5rem',
          flex: 1,
          overflowY: 'auto',
          overflowX: 'hidden',
          minHeight: 0,
          maxHeight: cartItems.length > 3 ? 'calc(3 * (4rem + 0.5rem))' : 'none',
          scrollbarWidth: 'thin',
          scrollbarColor: '#A855F7 rgba(255, 255, 255, 0.1)',
        }}
      >
        {cartItems.length > 0 ? (
          cartItems.map((item, index) => (
            <div
              key={`${item.name}-${item.slot}-${index}`}
              style={{
                display: 'flex',
                flexDirection: 'row',
                alignItems: 'center',
                gap: '0.5rem',
                padding: '0.5rem',
                borderRadius: '.2167vw',
                backgroundColor: 'rgba(141, 141, 141, 0.20)',
              }}
            >
              <img
                src={getCartItemImage(item)}
                alt={item.name}
                style={{ width: '40px', height: '40px', objectFit: 'contain' }}
              />
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ 
                  fontSize: '.4167vw', 
                  color: getRarityTextColor(item.rarity || 'common'), 
                  textTransform: 'uppercase',
                  fontFamily: 'Akshar',
                  fontWeight: 600,
                }}>
                  {item.rarity || 'common'}
                </div>
                <div style={{ 
                  fontSize: '.5208vw', 
                  color: '#FFF', 
                  fontWeight: 700,
                  fontFamily: 'Akshar',
                  textShadow: '0px 0px 20px rgba(255, 255, 255, 0.40)',
                }}>
                  {getItemLabel(item)}
                </div>
              </div>
              <div style={{ display: 'flex', flexDirection: 'row', alignItems: 'center', gap: '0.25rem' }}>
                <button
                  onClick={() => setCartItems((prev) => prev.map((cartItem) => 
                    cartItem.name === item.name && cartItem.slot === item.slot && cartItem.quantity > 1 
                      ? { ...cartItem, quantity: cartItem.quantity - 1 } 
                      : cartItem
                  ))}
                  style={{
                    width: '1.5625vw',
                    height: '2.7778vh',
                    background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                    border: '1px solid rgba(153, 153, 153, 0.00)',
                    boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                    color: '#FFF',
                    borderRadius: '.4167vw',
                    cursor: 'pointer',
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center',
                    fontFamily: 'Akshar',
                    fontSize: '.7292vw',
                    fontWeight: 600,
                  }}
                >
                  −
                </button>
                <input
                  type='number'
                  className="inventory-control-input"
                  value={item.quantity}
                  onChange={(e) => {
                    const value = Math.max(1, Number(e.target.value));
                    setCartItems((prev) => prev.map((cartItem) => 
                      cartItem.name === item.name && cartItem.slot === item.slot 
                        ? { ...cartItem, quantity: value } 
                        : cartItem
                    ));
                  }}
                  style={{
                    width: '3.125vw',
                    height: '2.7778vh',
                    textAlign: 'center',
                  }}
                />
                <button
                  onClick={() => setCartItems((prev) => prev.map((cartItem) => 
                    cartItem.name === item.name && cartItem.slot === item.slot 
                      ? { ...cartItem, quantity: cartItem.quantity + 1 } 
                      : cartItem
                  ))}
                  style={{
                    width: '1.5625vw',
                    height: '2.7778vh',
                    background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                    border: '1px solid rgba(153, 153, 153, 0.00)',
                    boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                    color: '#FFF',
                    borderRadius: '.4167vw',
                    cursor: 'pointer',
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center',
                    fontFamily: 'Akshar',
                    fontSize: '.7292vw',
                    fontWeight: 600,
                  }}
                >
                  +
                </button>
              </div>
              <div style={{ 
                minWidth: '5.2083vw', 
                textAlign: 'right', 
                color: '#FFF',
                fontFamily: 'Akshar',
                fontSize: '.625vw',
                fontWeight: 700,
                textShadow: '0px 0px 20px rgba(255, 255, 255, 0.40)',
              }}>
                {(Locale.$ || '£')}{(item.price * item.quantity).toLocaleString('en-us')}
              </div>
              <button
                onClick={() => setCartItems((prev) => prev.filter((cartItem) => 
                  !(cartItem.name === item.name && cartItem.slot === item.slot)
                ))}
                style={{
                  width: '1.5625vw',
                  height: '2.7778vh',
                  background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                  border: '1px solid rgba(153, 153, 153, 0.00)',
                  boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                  color: '#FFF',
                  borderRadius: '.4167vw',
                  cursor: 'pointer',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  fontFamily: 'Akshar',
                  fontSize: '.7292vw',
                  fontWeight: 600,
                  padding: 0,
                }}
              >
                ×
              </button>
            </div>
          ))
        ) : (
          <div style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            justifyContent: 'center',
            padding: '2rem',
            color: 'rgba(255, 255, 255, 0.50)',
            textAlign: 'center',
            fontFamily: 'Akshar',
            fontSize: '.625vw',
            fontWeight: 600,
          }}>
            <div style={{ fontSize: '1.5rem', marginBottom: '0.5rem' }}>+</div>
            <div>Drag shop items here</div>
            <div style={{ fontSize: '.5208vw', marginTop: '0.25rem' }}>or double-click / shift+click</div>
          </div>
        )}
      </div>
      
      {cartItems.length > 0 && (
        <div className="inventory-grid-header-bottom" style={{ 
          borderTop: '1px solid rgba(255, 255, 255, 0.2)', 
          paddingTop: '0.7813vw',
          flexShrink: 0,
          overflow: 'visible',
          width: '100%',
          boxSizing: 'border-box',
          display: 'flex',
          flexDirection: 'row',
          justifyContent: 'space-between',
          alignItems: 'center',
        }}>
          <div style={{ 
            display: 'flex', 
            flexDirection: 'column',
            alignItems: 'flex-start',
            color: '#FFF',
            fontFamily: 'Akshar',
            fontSize: '.625vw',
            fontWeight: 700,
            textShadow: '0px 0px 20px rgba(255, 255, 255, 0.40)',
            whiteSpace: 'nowrap',
            overflow: 'visible',
            boxSizing: 'border-box',
          }}>
            <span style={{ flexShrink: 0, overflow: 'visible' }}>
              Total Cost: {(Locale.$ || '£')}{totalCost.toLocaleString('en-us')}
            </span>
            {onlyCash && !onlyBlackMoney && totalCashCost > 0 && (
              <span style={{ 
                marginTop: '0.2604vw',
                fontSize: '.5208vw',
              }}>
                Cash Cost: {(Locale.$ || '£')}{totalCashCost.toLocaleString('en-us')}
              </span>
            )}
          </div>
          <div style={{ 
            display: 'flex', 
            flexDirection: 'row',
            gap: '.5208vw', 
            alignItems: 'center',
            overflow: 'visible',
            boxSizing: 'border-box',
          }}>
            {!onlyCash && (
              <button
                onClick={() => handlePay('bank')}
                style={{
                  width: 'auto',
                  minWidth: '3.125vw',
                  height: '2.7778vh',
                  padding: '0 .3125vw',
                  background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                  border: '1px solid rgba(153, 153, 153, 0.00)',
                  boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                  color: '#FFF',
                  borderRadius: '.2083vw',
                  cursor: 'pointer',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  fontFamily: 'Akshar',
                  fontSize: '.4167vw',
                  fontWeight: 600,
                  whiteSpace: 'nowrap',
                  textAlign: 'center',
                }}
              >
                Pay Bank
              </button>
            )}
            {onlyBlackMoney && (
              <button
                onClick={() => handlePay('black_money')}
                style={{
                  width: 'auto',
                  minWidth: '3.125vw',
                  height: '2.7778vh',
                  padding: '0 .3125vw',
                  background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                  border: '1px solid rgba(153, 153, 153, 0.00)',
                  boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                  color: '#FFF',
                  borderRadius: '.2083vw',
                  cursor: 'pointer',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  fontFamily: 'Akshar',
                  fontSize: '.4167vw',
                  fontWeight: 600,
                  whiteSpace: 'nowrap',
                  textAlign: 'center',
                }}
              >
                Pay Dirty Money
              </button>
            )}
            {!onlyBlackMoney && (
              <button
                onClick={() => handlePay('cash')}
                style={{
                  width: 'auto',
                  minWidth: '3.125vw',
                  height: '2.7778vh',
                  padding: '0 .3125vw',
                  background: 'radial-gradient(50% 50% at 50% 50%, rgba(0, 0, 0, 0.00) 0%, rgba(0, 0, 0, 0.04) 100%), radial-gradient(50% 50% at 50% 50%, rgba(160, 160, 160, 0.04) 0%, rgba(160, 160, 160, 0.00) 100%), rgba(141, 141, 141, 0.20)',
                  border: '1px solid rgba(153, 153, 153, 0.00)',
                  boxShadow: '0px 4px 17.1px 0px rgba(77, 77, 77, 0.25) inset',
                  color: '#FFF',
                  borderRadius: '.2083vw',
                  cursor: 'pointer',
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  fontFamily: 'Akshar',
                  fontSize: '.4167vw',
                  fontWeight: 600,
                  whiteSpace: 'nowrap',
                  textAlign: 'center',
                }}
              >
                Pay Cash
              </button>
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default ShopCart;
