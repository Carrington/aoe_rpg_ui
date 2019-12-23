import { isActionOf, createAction, action } from 'typesafe-actions';
import { Handler, Action } from '../types';
import { Sheet as CharacterSheet } from './CharacterSheets';

/**
 * Actor Types
 */

export interface Actor {
  id: string;
  name: string;
  displayName: string;
  characterSheet: CharacterSheet;
}
