import { isActionOf, createAction, action } from 'typesafe-actions';
import { Handler, Action } from '../types';
import { Setting } from './Settings';
import { Actor } from './Actors';

/**
 * Scene Types
 */

export interface Scene {
  id: string;
  setting: Setting;
  actors: Actor[];
}

/**
 * Scene Actions Namespace
 */

const baseNamespace = 'SCENES';

const REQUEST_LOAD_SCENE = `${baseNamespace}/REQUEST_LOAD_NAMESPACE`;
const SCENE_LOADING = `${baseNamespace}/SCENE_LOADING`;
const SCENE_LOADED = `${baseNamespace}/SCENE_LOADED`;
const SCENE_LOADING_ERROR = `${baseNamespace}/SCENE_LOADING_ERROR`;

/**
 * Scene Action Creator
 */




export const Actions = [
  REQUEST_LOAD_SCENE,
  SCENE_LOADING,
  SCENE_LOADED,
  SCENE_LOADING_ERROR
];
