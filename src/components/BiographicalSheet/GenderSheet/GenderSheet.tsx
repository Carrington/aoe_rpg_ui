import * as React from 'react';
import { BiologicalSex, biologicalSexes, changeBiologicalSex, changeGender, Genders } from '../../../ducks/biographicals/actions';
import BasicSelectInput from '../../_shared/FormElements/BasicSelectInput';

interface IGenderSheetProps {
  genderIdentity:Genders,
  biologicalSex: BiologicalSex
}

const genderSelect = (e: React.FormEvent<HTMLSelectElement>) => changeGender(e.currentTarget.value as Genders);

const biologicalSexSelect = (e: React.FormEvent<HTMLSelectElement>) => changeBiologicalSex(e.currentTarget.value as BiologicalSex);

const GenderSheet: React.SFC<IGenderSheetProps> = (props: IGenderSheetProps) =>
  (
    <div>
      <BasicSelectInput<Genders>
        value={props.genderIdentity}
        required={true}
        options={Object.keys(Genders).map(key => key as Genders)}
        label="Gender Identity"
        onSelect={genderSelect}
      />
      <BasicSelectInput<BiologicalSex>
        value={props.biologicalSex}
        required={true}
        options={biologicalSexes}
        label="Biological Sex"
        onSelect={biologicalSexSelect}
      />
    </div>
  )

  export default GenderSheet
