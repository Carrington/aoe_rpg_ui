import * as React from 'react';

interface IBasicSelectInputProps<value> {
  value: value,
  required: boolean,
  options: value[],
  onSelect: SelectCallback,
  label?: string,
}

type SelectCallback = (e: React.FormEvent<HTMLSelectElement>) => void;

class BasicSelectInput<V> extends React.Component<IBasicSelectInputProps<V>> {
  constructor(props: IBasicSelectInputProps<V>) {
    super(props);
  }

  public render() {
    return (
      <select
        onChange={this.props.onSelect}
      >
        {
          this.props.options.map(value =>
            (
              <option
                value={value.toString()}
                key={value.toString()}
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
