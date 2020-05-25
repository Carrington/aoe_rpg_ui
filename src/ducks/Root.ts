import { combineReducers } from 'redux';
import { default as ActionsReducer, loadEpic } from './Actions';
import { combineEpics } from 'redux-observable';

export interface Card {
  suit: string;
  number: number;
  image: string;
  description: string;
}

interface Cards {
  [key: string]: Card
}
export interface ActionDeck {
  cards: Cards;
}

export interface AppState {
  actionDeck: ActionDeck;
};

export const rootEpic = combineEpics(
  loadEpic
);

export default combineReducers({
  ActionsReducer
});
