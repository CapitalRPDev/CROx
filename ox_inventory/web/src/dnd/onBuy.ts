import { isSlotWithItem, findAvailableSlot } from '../helpers';
import { store } from '../store';
import { DragSource, DropTarget } from '../typings';
import { Items } from '../store/items';
import { buyItem } from '../thunks/buyItem';

export const onBuy = async (source: DragSource, target: DropTarget, itemCount?: number, type?: string, cartItems?: any[]) => {
  // Handle cart items (multiple items with quantities)
  if (cartItems && cartItems.length > 0) {
    for (const item of cartItems) {
      const { inventory: state } = store.getState();
      
      const sourceInventory = state.rightInventory;
      const targetInventory = state.leftInventory;
      
      const sourceSlot = sourceInventory.items[item.slot - 1] as any;
      
      if (!isSlotWithItem(sourceSlot)) {
        console.error(`ERROR onBuy: sourceSlot is not SlotWithItem`);
        continue;
      }
      
      if (sourceSlot.count === 0) continue;
      
      const sourceData = Items[sourceSlot.name];
      
      if (sourceData === undefined) {
        console.error(`Item ${sourceSlot.name} data undefined!`);
        continue;
      }
      
      const targetSlot = findAvailableSlot(sourceSlot, sourceData, targetInventory.items);
      
      if (targetSlot === undefined) {
        console.error(`Target slot undefined`);
        continue;
      }
      
      // Use individual item quantity instead of global itemCount
      const count = item.quantity || 1;
      
      const data = {
        fromSlot: sourceSlot,
        toSlot: targetSlot,
        fromType: sourceInventory.type,
        toType: targetInventory.type,
        count: count,
        type: type,
      };
      
      store.dispatch(
        buyItem({
          ...data,
          fromSlot: sourceSlot.slot,
          toSlot: targetSlot.slot,
        })
      );

      // Add a delay between purchases
      await new Promise(resolve => setTimeout(resolve, 300));
    }
    return;
  }

  // Original single item purchase logic
  const { inventory: state } = store.getState();

  const sourceInventory = state.rightInventory;
  const targetInventory = state.leftInventory;

  const sourceSlot = sourceInventory.items[source.item.slot - 1];

  if (!isSlotWithItem(sourceSlot)) throw new Error(`Item ${sourceSlot.slot} name === undefined`);

  if (sourceSlot.count === 0) return;

  const sourceData = Items[sourceSlot.name];

  if (sourceData === undefined) return console.error(`Item ${sourceSlot.name} data undefined!`);

  const targetSlot = targetInventory.items[target.item.slot - 1];

  if (targetSlot === undefined) return console.error(`Target slot undefined`);

  const count =
    state.itemAmount !== 0
      ? sourceSlot.count
        ? state.itemAmount > sourceSlot.count
          ? sourceSlot.count
          : state.itemAmount
        : state.itemAmount
      : 1;

  const data = {
    fromSlot: sourceSlot,
    toSlot: targetSlot,
    fromType: sourceInventory.type,
    toType: targetInventory.type,
    count: count,
  };

  store.dispatch(
    buyItem({
      ...data,
      fromSlot: sourceSlot.slot,
      toSlot: targetSlot.slot,
    })
  );
};
