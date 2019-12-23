import { isActionOf, createAction, action } from 'typesafe-actions';
import { Handler, Action } from '../types';
import { Prop } from './Props';

/**
 * Settings Types
 */

export interface Setting {
  id: string;
  props: Prop[];
}
