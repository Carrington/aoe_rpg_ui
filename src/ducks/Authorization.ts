import { isActionOf, createAction } from 'typesafe-actions';
import { Handler, Action } from '../types';

interface ResourceDictionary {
    [id: string]: any
}

interface AuthorizationState {
    loggedIn: boolean;
    username: string | null;
    uid: string | null;
    resources: ResourceDictionary;
}

/**
 * Authorization Action Namespace
 */

const baseNamespace = 'AUTHORIZATION';

const LOGIN = `${baseNamespace}/LOGIN`;
const CHECK_AUTHENTICATION = `${baseNamespace}/CHECK_AUTHENTICATION`;
const SET_AUTHENTICATION = `${baseNamespace}/SET_AUTHENTICATION`;

const LOAD_RESOURCES = `${baseNamespace}/LOAD_RESOURCES`;
const BEGIN_LOADING_RESOURCES = `${baseNamespace}/BEGIN_LOADING_RESOURCES`;
const RESOURCES_LOADED = `${baseNamespace}/RESOURCES_LOADED`;

/**
 * Authorization Action Creators
 */

export const login = createAction(LOGIN, action => (username: string, uid: string) => action(username, uid));

export const checkAuthentication = createAction(CHECK_AUTHENTICATION, action => (username: string, password: string) => action(username, password));

export const checkAuthentication = createAction(CHECK_AUTHENTICATION, action => (username: string, password: string) => action(username, password));

/**
  * Authorization Reducer
  */

const initialState: AuthorizationState = {
    loggedIn: false,
    username: null,
    uid: null,
    resources: {}
}

const reducer = (state: AuthorizationState = initialState, action: Action) =>
    (handler.hasOwnProperty(action.type)) ? handler[action.type](action, state) : initialState;

const handler: Handler<AuthorizationState> = {};

handler[SET_AUTHENTICATION] = (action, state) => ({
    ...state,
    username: action.payload.username,
    uid: action.payload.uid
})

/**
 * Authorization Epics
 */

// TODO: LoginEpic, CheckAuthenticationEpic

export const actionCreators = {

};

export const actions = [
];

export default reducer;