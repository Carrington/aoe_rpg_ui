import { isActionOf, createAction } from 'typesafe-actions';

export interface CardType {
  id: string;
  number: number;
  suit: string;
}

/**
 * Cards Action Namespace
 */

const baseNamespace = 'CARDS';

const DRAW_CARD = `${baseNamespace}/DRAW_CARD`;

export const drawCard = createAction(DRAW_CARD, action => (deckId: string) => action(deckId));
