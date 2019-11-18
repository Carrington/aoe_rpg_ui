import { createStore, applyMiddleware } from 'redux';
import rootReducer from './ducks/Root';
import { createEpicMiddleware } from 'redux-observable';
const epicMiddleware = createEpicMiddleware();

export default function configureStore() {
 return createStore(
  rootReducer,
   applyMiddleware(epicMiddleware)
 );
}