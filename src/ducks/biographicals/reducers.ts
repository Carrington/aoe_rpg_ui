import { IAction } from './../../types/actions.d';
import { AttractionGrid, AttractionType, BiographicalActions, BiographicalPayloads, BiologicalSex, Genders, IAttractionGridPayload, IBioSexPayload, IGenderPayload, INamePayload, IQueerPayload } from './actions';

export interface IBiographicalState {
  name: string[],
  gender: Genders,
  biologicalSex: BiologicalSex,
  genderQueer: boolean,
  attractionGrid: AttractionGrid,
}

const InitialState = {
  attractionGrid: [
    { index: AttractionType.AromanticAsexuality, value: 0 },
    { index: AttractionType.RomanticAsexuality, value: 0 },
    { index: AttractionType.TertiarySexuality, value: 0 },
    { index: AttractionType.SecondarySexuality, value: 0 },
    { index: AttractionType.PrimarySexuality, value: 0 },
    { index: AttractionType.HyperSexuality, value: 0 },
  ],
  biologicalSex: Genders.Intersex as BiologicalSex,
  gender: Genders.Agender,
  genderQueer: false,
  name: ['New', 'Character']
}

export const biographicalReducer = (state: IBiographicalState = InitialState, action: IAction<BiographicalActions, BiographicalPayloads>) => {
  switch (action.type) {
    case BiographicalActions.INIT_NAME: {
      const { names } = action.payload as INamePayload;
      return { ...state, name: names };
    }
    case BiographicalActions.CHANGE_NAME: {
      const { names, index } = action.payload as INamePayload;
      if (index && index >= 0)  {
        state.name[index] = names[0];
      }
      return state;
    }
    case BiographicalActions.INIT_GENDER_QUEER: {
      const { genderQueer } = action.payload as IQueerPayload;
      return { ...state, genderQueer };
    }
    case BiographicalActions.TOGGLE_GENDER_QUEER: {
      return { ...state, genderQueer: !state.genderQueer };
    }
    case BiographicalActions.INIT_GENDER_IDENTITY:
    case BiographicalActions.CHANGE_GENDER_IDENTITY: {
      const { gender } = action.payload as IGenderPayload;
      return { ...state, gender }
    }
    case BiographicalActions.INIT_BIOLOGICAL_SEX:
    case BiographicalActions.CHANGE_BIOLOGICAL_SEX: {
      const { sex } = action.payload as IBioSexPayload;
      return { ...state, biologicalSex: sex };
    }
    case BiographicalActions.INIT_ATTRACTION_GRID:
    case BiographicalActions.CHANGE_ATTRACTION_GRID: {
      const { values } = action.payload as IAttractionGridPayload
      const { attractionGrid } = state;

      values.forEach(({ value, index }) => attractionGrid[AttractionType[index]] = value);
      return { ...state, attractionGrid: values }
    }
  }

  return state;
};
