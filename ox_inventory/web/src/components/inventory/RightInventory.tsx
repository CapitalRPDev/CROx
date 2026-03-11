import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';
import ShopCart from './ShopCart';

const RightInventory: React.FC = () => {
  const rightInventory = useAppSelector(selectRightInventory);
  let trunkInventory = useAppSelector(selectRightInventory);
  let backpackInventory = useAppSelector(selectRightInventory);

  let inventoryDisabled = false;
  backpackInventory = {
    ...backpackInventory,
    items: backpackInventory.items.slice(30, 60),
  }
  let backpackDisabled = false;

  if (rightInventory.backpackDisabled) {
    backpackDisabled = true;
  }
  trunkInventory = {...trunkInventory, label: "TRUNK"}
  if (trunkInventory) {
    if(trunkInventory.type !== 'trunk' && trunkInventory.type !== 'glovebox') {
      inventoryDisabled = true;
    }
  }

  return(
    <div style={{ position: 'relative' }}>
      <InventoryGrid inventory={rightInventory} />
      {rightInventory.type === 'shop' && (
        <div style={{ 
          position: 'absolute',
          left: '0vw',
          top: '49.2963vh',
        }}>
          <ShopCart inventory={rightInventory} />
        </div>
      )}
      {/* <InventoryGrid inventory={trunkInventory} inventoryDisabled={inventoryDisabled} /> */}
    </div>
  );
};

export default RightInventory;
