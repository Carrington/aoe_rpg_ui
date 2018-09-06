import * as React from 'react';
import { IName } from '../../../ducks/biographicals/actions';
import { INameState } from "../../../ducks/biographicals/reducers";
import BasicTextInput from '../../_shared/FormElements/BasicTextInput';

const NameSheet: React.SFC<INameState> = (props: INameState) =>
  (
    <BasicTextInput
      value={props.names.join(' ')}
      required={true}
      label="Full Name"
      // tslint:disable-next-line:jsx-no-lambda
      changeCallback={(value: string) => {
        value
          .split(' ')
          .reduce(
            (accumulator: IName[], name: string, index: number) =>
              (!props.names[index] || props.names[index] !== name) ?
                accumulator.push({ name, index }) : accumulator,
            []
          )
      }}
    />
  )

  export default NameSheet;
