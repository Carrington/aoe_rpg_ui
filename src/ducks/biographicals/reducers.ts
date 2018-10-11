import { IAction } from './../../types/actions.d';
import { BiographicalActions, BiographicalPayloads, BiologicalSex, Genders, IAttractionGrid, IAttractionGridPayload, IBioSexPayload, IGenderPayload, INamePayload, IQueerPayload } from './actions';

export interface IBiographicalState {
  names: string[],
  gender: Genders,
  biologicalSex: BiologicalSex,
  genderQueer: boolean,
  attractionGrid: IAttractionGrid,
}

export interface INameState {
  names: string[];
}

export const InitialState: IBiographicalState = {
  attractionGrid: {
    AromanticAsexuality: { value: 0 },
    HyperSexuality: { value: 0 },
    PrimarySexuality: { value: 0 },
    RomanticAsexuality: { value: 0 },
    SecondarySexuality: { value: 0 },
    TertiarySexuality: { value: 0 },
  },
  biologicalSex: Genders.Intersex as BiologicalSex,
  gender: Genders.Agender,
  genderQueer: false,
  names: ['New', 'Character']
}

export const biographicalReducer = (state: IBiographicalState = InitialState, action: IAction<BiographicalActions, BiographicalPayloads>) => {
  switch (action.type) {
    case BiographicalActions.INIT_NAME: {
      const { names } = action.payload as INamePayload;
      return { ...state, names };
    }
    case BiographicalActions.CHANGE_NAME: {
      const { names } = action.payload as INamePayload;
      return { ...state,
        names: names.map((name, attractionType) => (name.name) ? name.name : state.names[attractionType])};
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

      const grid = Object.keys(attractionGrid).map((attractionType) => {
        const newVal = values.find((v) => v.attractionType === attractionType);
        return newVal ? { attractionType, value: newVal.value } : attractionGrid[attractionType]
      });

      return { ...state, attractionGrid: grid }
    }
  }

  return state;
};
