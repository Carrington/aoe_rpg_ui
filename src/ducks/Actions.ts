import Trie from '../shitJSNeeded/trie';
import { Epic } from "redux-observable";
import { from, of } from 'rxjs';
import { switchMap, filter, map, catchError } from 'rxjs/operators';
import { isActionOf, createAction } from 'typesafe-actions';
import { create } from 'domain';

/**
 * move later
 */

type Resolver = (params: any[]) => any;
type Rejecter = (error: { message: string }) => any;

/**
 * TODO
 */

const apiLoadActions = (id: string) => new Promise((resolve: Resolver, reject: Rejecter) => {
  setTimeout(() => (Date.now() % 9 === 0) ? reject({ message: 'test' }) : resolve([]));
});

/**
 * Actions Types
 */

 interface Action {
   type: string;
   payload?: any;
 }

interface LoadingErrorObject {
  error: string;
  code: number;
}

interface ActionsState {
  loading: boolean;
  availableActions: GameAction[];
  filteredAvailableActions: Trie;

  error: null | LoadingErrorObject;
}

interface GameAction {
  name: string;
  label: string;
  icon: string;
}

interface Handler {
  [member: string]: (action: Action, state: ActionsState) => ActionsState;
}

/**
 * Functions That Are Too Long To Be Written Inline
 */
//TODO
const filterAvailableActions = (availableActions: GameAction[], filter: string) =>
  new Trie().createDictionary(availableActions.map(action => action.label));

/**
 * Actions Action Namespace
 */

const baseNamespace = 'ACTIONS';

const LOAD_AVAILABLE_ACTIONS = `${baseNamespace}/LOAD`;
const BEGIN_LOADING = `${baseNamespace}/BEGIN_LOADING`;
const FINISH_LOADING_AVAILABLE_ACTIONS = `${baseNamespace}/FINISH_LOADING`;
const LOADING_AVAILABLE_ACTIONS_ERROR = `${baseNamespace}/LOADING_ERROR`;

const FILTER_AVAILABLE_ACTIONS = `${baseNamespace}/FILTER`;
const ASSIGN_ACTION_TO_CHARACTER_STEP = `${baseNamespace}/ASSIGN_CHARACTER_STEP`;

const LOCK_ACTIONS = `${baseNamespace}/LOCK`;
const RECEIVE_LOCKED_ACTIONS = `${baseNamespace}/RECEIVE_LOCKED`;

/**
 * Action Creators
 */

export const loadAvailableActions = createAction(LOAD_AVAILABLE_ACTIONS, action => (actorId: string) => action(actorId));

export const beginLoadingActions = createAction(BEGIN_LOADING, action => () => action());

export const finishLoadingAvailableActions = createAction(FINISH_LOADING_AVAILABLE_ACTIONS, action => (gameActions: GameAction[]) => action(gameActions));

export const loadingAvailableActionsError = createAction(LOADING_AVAILABLE_ACTIONS_ERROR, action => (error: Error) => action(error));

export const assignGameActionToCharacterStep = createAction(ASSIGN_ACTION_TO_CHARACTER_STEP, action => (gameAction: GameAction, step: number) => action({ gameAction, step }));


/**
  * Actions Reducer
  */

const initialState: ActionsState = {
  loading: false,
  availableActions: [],
  filteredAvailableActions: new Trie(),
  error: null
}

const reducer = (state: ActionsState = initialState, action: Action) =>
  (handler.hasOwnProperty(action.type)) ? handler[action.type](action, state) : initialState;

const handler: Handler = {}

handler[BEGIN_LOADING] = (action, state) =>
  ({ ...state,
    loading: true });

handler[FINISH_LOADING_AVAILABLE_ACTIONS] =
  (action: Action, state: ActionsState): ActionsState =>
    ({ ...state,
      loading: false,
      availableActions: action.payload,
      filteredAvailableActions: action.payload
    });

handler[LOADING_AVAILABLE_ACTIONS_ERROR] =
  (action: Action, state: ActionsState): ActionsState =>
    ({ ...state,
      loading: false,
      availableActions: [],
      filteredAvailableActions: new Trie().createDictionary(state.availableActions.map(action => action.label)),
      error: action.payload });

handler[FILTER_AVAILABLE_ACTIONS] =
  (action: Action, state: ActionsState): ActionsState =>
    ({ ...state,
      filteredAvailableActions: filterAvailableActions(state.availableActions, action.payload)
    });

/**
 * Actions Epics
 */

export const loadEpic: Epic<Action, Action, ActionsState> = (action$, store) =>
    action$.pipe(
      filter(isActionOf(loadAvailableActions)),
      switchMap(action =>
        from(apiLoadActions(action.payload)).pipe(
          map(finishLoadingAvailableActions),
          catchError(error => of(loadingAvailableActionsError(error)))
        )
      )
    );

export const actionCreators = {
  loadAvailableActions
};

export const actions = [
  BEGIN_LOADING,
  LOAD_AVAILABLE_ACTIONS,
  FINISH_LOADING_AVAILABLE_ACTIONS,
  LOADING_AVAILABLE_ACTIONS_ERROR
];

export default reducer;