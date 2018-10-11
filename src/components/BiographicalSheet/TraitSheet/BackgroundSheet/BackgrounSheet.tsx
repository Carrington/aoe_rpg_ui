import * as React from 'react';
import BasicToggleInput from '../../../_shared/FormElements/BasicToggleInput';

const BackgroundSheet = (props) =>
  (
    <ul>
      {
        props.backgrounds.map((background) => (
          <li>
            <BasicToggleInput
              label={background.label}
              checked={background.active}
              value={background.value}
              onChange={DOTHEONCHANGEACTIONSREDUCERSOHGOD}
            />
          </li>
        ))
      }
    </ul>
  )
