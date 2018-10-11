import * as React from 'react';
import BiographicalSheet from '../BiographicalSheet/BiographicalSheet';
import SoulSheet from '../SoulSheet/SoulSheet';

class CharacterSheet extends React.Component {

  constructor(props: any) {
    super(props);
  }

  public render() {
    return (
      <div>
        <div>
          <BiographicalSheet/>
          <SoulSheet />
        </div>
      </div>
    )
  }
}

export default CharacterSheet;
