import Switch from '@material-ui/core/Switch';
import * as React from 'react';

interface IBasicToggleInputProps {
  label?: string;
  checked: boolean;
  value: string | number | null;

}

const BasicToggleInput = (props: IBasicToggleInputProps) =>
  (
    <div>
      <label>
        {props.label}
      </label>
      <Switch
        checked={props.checked}
        value={props.value}
        onChange={props.onChange}
      />
    </div>
  );

export default BasicToggleInput
