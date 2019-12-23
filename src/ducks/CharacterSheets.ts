import { isActionOf, createAction, action } from 'typesafe-actions';
import { Handler, Action } from '../types';

export interface Sheet {
  loaded: boolean;
  sheetId: string;
}

interface CharacterSheetsState {
  sheets: {
    [key: string]: Sheet
  }
}

/**
 * Authorization Action Namespace
 */

const baseNamespace = 'CHARACTER_SHEETS';

const REQUEST_LOAD_SHEET = `${baseNamespace}/REQUEST_LOAD_SHEET`;
const SHEET_LOADING = `${baseNamespace}/SHEET_LOADING`;
const SHEET_LOADED = `${baseNamespace}/SHEET_LOADED`;
const SHEET_LOADING_ERROR = `${baseNamespace}/SHEET_LOADING_ERROR`;

/**
 * Authorization Action Creators
 */

export const requestLoadSheet = createAction(REQUEST_LOAD_SHEET, action => (sheetId: string, bustCache: boolean = false) => action(sheetId, bustCache));

export const sheetLoading = createAction(SHEET_LOADING, action => (sheetId: string) => action(sheetId));

export const sheetLoaded = createAction(SHEET_LOADED, action => () => action());

export const sheetLoadingError = createAction(SHEET_LOADING_ERROR, action => (error: string) => action(error));

/**
  * Authorization Reducer
  */

const initialState: CharacterSheetsState = {
  sheets: {}
}

const reducer = (state: CharacterSheetsState = initialState, action: Action) =>
    (handler.hasOwnProperty(action.type)) ? handler[action.type](action, state) : initialState;

const handler: Handler<CharacterSheetsState> = {};

handler[REQUEST_LOAD_SHEET] = (action, state) => ({
  ...state,
  sheets: {
    ...state.sheets,
    [action.payload.sheetId]: {
      ...state.sheets[action.payload.sheetId],
      loaded: false
    }
  }
});

/**
 * Character Sheet Epics
 */

// TODO: requestLoadSheetEpic

export const actionCreators = {

};

export const actions = [
];

export default reducer;
