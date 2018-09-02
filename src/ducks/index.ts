import { firebaseReducer } from 'react-redux-firebase';
import { combineReducers } from 'redux';
import { combineEpics, Epic } from 'redux-observable';
import { IAction } from './../types/actions.d';

declare enum ApplicationActions {
  UNDEFINED_ERROR_ACTION = 'AOE/ERRORS/UNDEFINED_ERROR_ACTION',
}

// TODO fix any, explicitly set state as ApplicationState, etc. (check Epic generic for deets)
export const rootEpic = combineEpics<Epic<IAction<ApplicationActions, any>>>()

export const rootReducer = combineReducers({
  firebase: firebaseReducer,
});
