import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import { SlotWithItem } from '../typings';

interface PlayerDataState {
  playerID: number;

}

const initialState: PlayerDataState = {
  playerID: 0,
};

export const playerDataSlice = createSlice({
  name: 'playerData',
  initialState,
  reducers: {
    setplayerID(state, action: PayloadAction<number>) {
      state.playerID = action.payload;
    }
  },
});

export const { setplayerID } = playerDataSlice.actions;


export const selectplayerID = (state: { playerData: PlayerDataState }) => state.playerData.playerID;


export default playerDataSlice.reducer;