import React, { useState } from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { fetchNui } from '../../utils/fetchNui';
import { Locale } from '../../store/locale';
import UsefulControls from './UsefulControls';
import serverLogo from './serverLogo.png';

const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);

  const [, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    event.target.valueAsNumber =
      isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0 ? 0 : Math.floor(event.target.valueAsNumber);
    dispatch(setItemAmount(event.target.valueAsNumber));
  };

  return (
    <>
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      <div className="inventory-control">
        <div className="inventory-control-wrapper">

          {/* Server logo */}
          <div style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            gap: '6px',
            marginBottom: '8px',
          }}>
            <img
              src={serverLogo}
              alt="server logo"
              style={{
                width: '72px',
                height: '72px',
                objectFit: 'contain',
                filter: 'drop-shadow(0 0 12px rgba(0, 174, 255, 0.55))',
              }}
            />
            <span style={{
              fontFamily: 'Nunito, sans-serif',
              fontSize: '10px',
              fontWeight: 900,
              letterSpacing: '3px',
              textTransform: 'uppercase',
              color: '#ffffff',
              textShadow: '0 0 16px rgba(0, 174, 255, 0.6)',
            }}>
              Capital RP
            </span>
          </div>

          <input
            className="inventory-control-input"
            type="number"
            defaultValue={itemAmount}
            onChange={inputHandler}
            min={0}
          />
          <button className="inventory-control-button" ref={use}>
            {Locale.ui_use || 'Use'}
          </button>
          <button className="inventory-control-button" ref={give}>
            {Locale.ui_give || 'Give'}
          </button>
          <button
            className="inventory-control-button"
            ref={null}
            onClick={() => fetchNui('exit')}
            style={{ color: 'rgba(255,80,80,0.8)' }}
            onMouseEnter={e => (e.currentTarget.style.color = '#ff4444')}
            onMouseLeave={e => (e.currentTarget.style.color = 'rgba(255,80,80,0.8)')}
          >
            {Locale.ui_close || 'Close'}
          </button>
        </div>
      </div>
    </>
  );
};

export default InventoryControl;