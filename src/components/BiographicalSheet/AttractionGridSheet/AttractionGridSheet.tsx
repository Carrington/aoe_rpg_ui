
import * as React from 'react';
import { AttractionType } from '../../../ducks/biographicals/actions';

const AttractionGridSheet: SFC = () => (
  <div>
    <table>
      {
        Object.keys(AttractionType).map((key) =>
          <tr key={key}>
            (
              Array(5).map((_, index) =>
                <td key="index" />
              )
            )
          </tr>
        )
      }
    </table>
  </div>
)


export default AttractionGridSheet;
