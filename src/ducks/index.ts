import { firebaseReducer } from 'react-redux-firebase';
import { combineReducers } from 'redux';
import { combineEpics, Epic } from 'redux-observable';
import { IAction } from './../types/actions.d';
import { biographicalReducer, IBiographicalState, InitialState as BiographicalInitialState } from './biographicals/reducers';

declare enum ApplicationActions {
  UNDEFINED_ERROR_ACTION = 'AOE/ERRORS/UNDEFINED_ERROR_ACTION',
}

export interface IApplicationState {
  biographicalReducer: IBiographicalState;
  firebase: any;
}

export const initialState =  {
  biographicalReducer: BiographicalInitialState
};

// TODO fix any, explicitly set state as ApplicationState, etc. (check Epic generic for deets)
export const rootEpic = combineEpics<Epic<IAction<ApplicationActions, any>>>()

export const rootReducer = combineReducers({
  biographicalReducer,
  firebaseReducer
});
