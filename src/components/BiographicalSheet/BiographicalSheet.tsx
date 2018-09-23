import * as React from 'react';
import AttractionGridSheet from './AttractionGridSheet';
import GenderSheet from './GenderSheet';
import NameSheet from './NameSheet';

const BiographicalSheet: React.SFC = () => {
  return (
    <div>
      <h2>Biography</h2>
      <div>
        <NameSheet />
      </div>
      <div>
        <GenderSheet />
      </div>
      <div>
        <AttractionGridSheet />
      </div>
    </div>
  );
};

export default BiographicalSheet;
