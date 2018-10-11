import { Action, Dispatch } from 'redux';

export interface IAction<T extends string, P = {}> extends Action {
  type: T,
  payload?: P
}

export type ActionCreator<IAction> = (data: any) => Dispatch<any>;
