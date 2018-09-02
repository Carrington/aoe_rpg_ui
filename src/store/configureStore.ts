import * as firebase from 'firebase';
import { reactReduxFirebase } from 'react-redux-firebase';
import { applyMiddleware, compose, createStore } from 'redux';
import { createEpicMiddleware } from 'redux-observable';
import { rootReducer } from '../ducks/index';

export interface IFirebaseConfig {
  apiKey: string,
  authDomain: string,
  databaseURL: string,
  projectId: string,
  storageBucket: string,
  messagingSenderId: string,
}

export interface IRrfConfig {
  userProfile: string,
}

export const rrfConfig: IRrfConfig = {
  userProfile: 'users',
}

export const firebaseConfig: IFirebaseConfig = {
  apiKey: "AIzaSyD3c_o9B8HLG_kRyH--e_MCCs0wcSTTNwA",
  authDomain: "age-of-endings-rpg.firebaseapp.com",
  databaseURL: "https://age-of-endings-rpg.firebaseio.com",
  messagingSenderId: "759557264694",
  projectId: "age-of-endings-rpg",
  storageBucket: "age-of-endings-rpg.appspot.com",
}

firebase.initializeApp(firebaseConfig);

// TODO figure out concrete type of a compose store function
const createStoreWithFirebase = compose(
  reactReduxFirebase(firebase, rrfConfig)(createStore)
);

const initialState = {};

const epicMiddleware = createEpicMiddleware();

const store = createStoreWithFirebase(
  rootReducer,
  initialState,
  applyMiddleware(epicMiddleware)
);

export default store;
