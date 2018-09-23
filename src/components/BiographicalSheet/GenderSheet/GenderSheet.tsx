import * as React from 'react';
import { BiologicalSex, biologicalSexes, Genders } from '../../../ducks/biographicals/actions';
import BasicSelectInput from '../../_shared/FormElements/BasicSelectInput';

interface IGenderSheetProps {
  genderIdentity:Genders,
  biologicalSex: BiologicalSex
}

const GenderSheet: React.SFC<IGenderSheetProps> = (props: IGenderSheetProps) =>
  (
    <div>
      <BasicSelectInput<Genders>
        value={props.genderIdentity}
        required={true}
        options={Object.keys(Genders).map(key => key)}
        label="Gender Identity"
      />
      <BasicSelectInput<BiologicalSex>
        value={props.biologicalSex}
        required={true}
        options={biologicalSexes}
        label="Biological Sex"
      />
    </div>
  )

  export default GenderSheet
