import * as React from 'react';
import AttractionGridSheet from './AttractionGridSheet';
import EdgeSheet from './EdgeSheet';
import GenderSheet from './GenderSheet';
import NameSheet from './NameSheet';
import TraitSheet from './TraitSheet';

const BiographicalSheet: React.SFC = () => {
  return (
    <div>
      <h2>Biography and Biology</h2>
      <div>
        <NameSheet />
      </div>
      <div>
        <GenderSheet />
      </div>
      <div>
        <AttractionGridSheet />
      </div>
      <div>
        <TraitSheet />
      </div>
      <div>
        <EdgeSheet />
      </div>
    </div>
  );
};

export default BiographicalSheet;
