import React, { CSSProperties } from 'react';
import NoSsr from '@material-ui/core/NoSsr';
import Container from '@material-ui/core/Container';
import DeckContainer from './components/DeckContainer';
import SheetSummaryContainer from './components/SheetSummaryContainer';
import StageContainer from './components/StageContainer';
import InfoTabsContainer from './components/InfoTabsContainer';

const containerStyles: CSSProperties = {
  minHeight: '75%',
  display: 'flex',
  flexDirection: 'column',
  backgroundColor: '#f7f7fc'
}

const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        AoE RPG System - Actions
      </header>
      <div
        style={containerStyles}
      >
        <Container maxWidth="lg">
          <div>
            <NoSsr>
              <DeckContainer />
              <SheetSummaryContainer />
              <StageContainer />
              <InfoTabsContainer />
            </NoSsr>
          </div>
        </Container>
      </div>
    </div>
  );
}

export default App;
