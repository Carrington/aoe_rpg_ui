import { combineReducers } from 'redux';
import { default as ActionsReducer, loadEpic } from './Actions';
import { combineEpics } from 'redux-observable';

export const rootEpic = combineEpics(
  loadEpic
);

export default combineReducers({
  ActionsReducer
});