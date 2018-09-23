import * as React from 'react';
import { Genders } from '../../../ducks/biographicals/actions';

interface IBasicSelectInputProps<value> {
  value: value,
  required: boolean,
  options: value[],
  label?: string,
}

type BasicSelectValues = string | number | Genders;

class BasicSelectInput<V> extends React.Component<IBasicSelectInputProps<BasicSelectValues>> {
  constructor(props: IBasicSelectInputProps<BasicSelectValues>) {
    super(props);
  }

  public render() {
    return (
      <select>
        {
          this.props.options.map(value =>
            (
              <option
                value={value}
                selected={(value === this.props.value)}
              >
                {value}
              </option>
            )
          )
        }
      </select>
    );
  }
}

export default BasicSelectInput;
