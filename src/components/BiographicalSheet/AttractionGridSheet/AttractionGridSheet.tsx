
import * as React from 'react';
import { IAttractionGridSheetProps } from '.';
import { AttractionType, IAttractionValue } from '../../../ducks/biographicals/actions';
import Row from './Row';

const clickCell = (e: React.MouseEvent, onChangeAttractionValue: (v: IAttractionValue) => void) => {
  const attractionType: AttractionType | null = e.currentTarget.getAttribute('data-row') as AttractionType | null;
  const value = e.currentTarget.getAttribute('data-value') || '0';

  if (!attractionType) {
     return;
  }

  const attractionValue = {
    attractionType,
    value: Number.parseInt(value, 10)
  };


  onChangeAttractionValue(
    attractionValue
  )
};

const AttractionGridSheet: React.SFC = (props: IAttractionGridSheetProps) =>
  (
    <table>
      <tbody>
        {
          Object.keys(props.attractionGrid).map((key) =>
            (
              <Row
                // tslint:disable-next-line:jsx-no-lambda
                onClick={(e) => clickCell(e, props.onChangeAttractionValue)}
                activeCell={props.attractionGrid[key].value}
                activeColor={'red'}
                inactiveColor={'blue'}
                cellNumber={5}
                key={props.attractionGrid[key].attractionType}
                id={props.attractionGrid[key].attractionType}
              />
            )
          )
        }
      </tbody>
    </table>
  );


export default AttractionGridSheet;
