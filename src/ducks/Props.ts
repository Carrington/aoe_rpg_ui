import { isActionOf, createAction, action } from 'typesafe-actions';
import { Handler, Action } from '../types';

/**
 * Props Types
 */

export interface Prop {
  id: string;
  verbs: string[];
  description: string;
}
