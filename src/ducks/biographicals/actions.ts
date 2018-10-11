import { IAction } from '../../types/actions';
import { AttractionType, BiographicalPayloads, IAttractionGridPayload } from './actions';

export enum BiographicalActions {
  INIT_NAME = 'AOE/CHARACTER/INIT_NAME',
  CHANGE_NAME = 'AOE/CHARACTER/CHANGE_NAME',
  INIT_GENDER_IDENTITY = 'AOE/CHARACTER/INIT_GENDER_IDENTITY',
  CHANGE_GENDER_IDENTITY = 'AOE/CHARACTER/CHANGE_GENDER_IDENTITY',
  INIT_BIOLOGICAL_SEX = 'AOE/CHARACTER/INIT_BIOLOGICAL_SEX',
  CHANGE_BIOLOGICAL_SEX = 'CHANGE_BIOLOGICAL_SEX',
  INIT_GENDER_QUEER = 'INIT_GENDER_QUEER',
  TOGGLE_GENDER_QUEER = 'CHANGE_GENDER_IDENTITY',
  INIT_ATTRACTION_GRID = 'INIT_ATTRACTION_GRID',
  CHANGE_ATTRACTION_GRID = 'CHANGE_ATTRACTION_GRID',
}

export enum Genders {
  Agender = 'Agender',
  Aporagender = 'Aporagender',
  DemiFemale = 'Demi-female',
  DemiMale = 'Demi-male',
  Female = 'Female',
  Genderfluid = 'Genderfluid',
  Androgyne = 'Androgyne',
  Male = 'Male',
  Polygender = 'Polygender',
  Intersex = 'Intersex'
}

export type AttractionType = 'AromanticAsexuality' | 'RomanticAsexuality' | 'TertiarySexuality' | 'SecondarySexuality' | 'PrimarySexuality' | 'HyperSexuality';

export interface IAttractionValue {
  attractionType: AttractionType,
  value: number
}

export interface IAttractionGrid {
  AromanticAsexuality: { value: number | null },
  HyperSexuality: { value: number | null },
  PrimarySexuality: { value: number | null },
  RomanticAsexuality: { value: number | null },
  SecondarySexuality: { value: number | null },
  TertiarySexuality: { value: number | null },
};

export type BiologicalSex  = Genders.Female | Genders.Intersex | Genders.Male;

export const biologicalSexes: BiologicalSex[] = [Genders.Female, Genders.Intersex, Genders.Male];

export interface IName {
  name: string,
  index?: number
}

export interface INamePayload {
  names: IName[]
}

export interface IGenderPayload {
  gender: Genders
}

export interface IQueerPayload {
  genderQueer: boolean
}

export interface IBioSexPayload {
  sex: BiologicalSex
}

export interface IAttractionGridPayload {
  values: IAttractionValue[]
}

export type BiographicalPayloads = IAttractionGridPayload | INamePayload | IGenderPayload | IQueerPayload | IBioSexPayload;

export const initName = (names: IName[]): IAction<BiographicalActions.INIT_NAME, INamePayload> => ({
  payload: { names } as INamePayload,
  type: BiographicalActions.INIT_NAME
});

export type ChangeNameAction = (names: IName[]) => IAction<BiographicalActions.CHANGE_NAME, INamePayload>;
export const changeName = (names: IName[]): IAction<BiographicalActions.CHANGE_NAME, INamePayload> => ({
  payload: { names },
  type: BiographicalActions.CHANGE_NAME
});

export const initGender = (gender: Genders): IAction<BiographicalActions.INIT_GENDER_IDENTITY, IGenderPayload> => ({
  payload: {gender},
  type: BiographicalActions.INIT_GENDER_IDENTITY
});

export const changeGender = (gender: Genders): IAction<BiographicalActions.CHANGE_GENDER_IDENTITY, IGenderPayload> => ({
  payload: {gender},
  type: BiographicalActions.CHANGE_GENDER_IDENTITY
});

export const initGenderQueer = (queer: boolean): IAction<BiographicalActions.INIT_GENDER_QUEER, IQueerPayload> => ({
  payload: {genderQueer: queer},
  type: BiographicalActions.INIT_GENDER_QUEER
});

export const toggleGenderQueer = (): IAction<BiographicalActions.TOGGLE_GENDER_QUEER> => ({
  type: BiographicalActions.TOGGLE_GENDER_QUEER
});

export const initBiologicalSex = (sex: BiologicalSex): IAction<BiographicalActions.INIT_BIOLOGICAL_SEX, IBioSexPayload> => ({
  payload: {sex},
  type: BiographicalActions.INIT_BIOLOGICAL_SEX
});

export const changeBiologicalSex = (sex: BiologicalSex): IAction<BiographicalActions.CHANGE_BIOLOGICAL_SEX, IBioSexPayload> => ({
  payload: {sex},
  type: BiographicalActions.CHANGE_BIOLOGICAL_SEX
});

export const initAttractionGrid = (grid: IAttractionValue[]): IAction<BiographicalActions.INIT_ATTRACTION_GRID, IAttractionGridPayload> => ({
  payload: {values: grid},
  type: BiographicalActions.INIT_ATTRACTION_GRID
});

export const changeAttractionGrid = (grid: IAttractionValue[]): IAction<BiographicalActions.CHANGE_ATTRACTION_GRID, IAttractionGridPayload> => ({
  payload: {values: grid},
  type: BiographicalActions.CHANGE_ATTRACTION_GRID
});
