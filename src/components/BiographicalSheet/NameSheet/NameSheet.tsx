import * as React from 'react';
import BasicTextInput from '../../_shared/FormElements/BasicTextInput';
import { INameSheetProps } from './index';

const NameSheet: React.SFC<INameSheetProps> = (props: INameSheetProps) => {
  let names = '';

  if (props.names) {
    names = props.names.join(' ')
  }

  return (
    <BasicTextInput
      value={names}
      required={true}
      label="Full Name"
      // tslint:disable-next-line:jsx-no-lambda
      changeCallback={(value: string): void => {
        const changes = value
          .split(' ')
          .map(
            (name: string, index: number) =>
              ({name, index})
          )
          .filter((name, index) =>
            (!props.names[index] || props.names[index] !== name.name)
          );

        props.changeName(changes);
      }}
    />
  )
}

  export default NameSheet;
