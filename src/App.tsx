import * as React from 'react';
import './App.css';

import CharacterSheet from './components/CharacterSheet/CharacterSheet';

class App extends React.Component {
  public render() {
    return (
      <div className="App">
        <CharacterSheet />
      </div>
    );
  }
}

export default App;
