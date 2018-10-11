import * as firebase from 'firebase';
import { getFirebase, reactReduxFirebase } from 'react-redux-firebase';
import { applyMiddleware, compose, createStore } from 'redux';
import { createEpicMiddleware } from 'redux-observable';
import thunk from 'redux-thunk'
import { initialState, rootReducer } from '../ducks/index';
const version = '1';

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


declare global {
  // tslint:disable-next-line:interface-name
  interface Window {
    devToolsExtension: any,
    version: string
  }
}

export default (initState = initialState) => {
  window.version = version

  const middleware =[
    thunk.withExtraArgument(getFirebase),
    createEpicMiddleware()
  ];

  const enhancers = [];

  const devToolsExtension = window.devToolsExtension
  if (typeof devToolsExtension === 'function') {
    enhancers.push(devToolsExtension())
  }

  firebase.initializeApp(firebaseConfig);

  const store = createStore(
    rootReducer,
    initState,
    compose(
      applyMiddleware(...middleware),
      reactReduxFirebase(firebase, rrfConfig),
      ...enhancers
    )
  )

  return store
}
