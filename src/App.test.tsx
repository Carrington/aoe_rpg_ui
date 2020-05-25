import React from 'react';
import { shallow } from 'enzyme';
import App from './App';
import DeckContainer from './components/DeckContainer';

describe('Root App', () => {
  let wrapper;

  beforeEach(() => wrapper = shallow(<App />));

  it('renders without crashing', () => {
    expect(wrapper.find('div.App').length).toEqual(1);
  });

  it('renders the deck', () => {
    expect(wrapper.containsMatchingElement(<DeckContainer />)).toEqual(true);
  });

  it('renders the stage', () => {
    expect(wrapper.containsMatchingElement(<StageContainer />)).toEqual(true);
  });

  it('renders the info tabs', () => {
    expect(wrapper.containsMatchingElement(<InfoTabsContainer />)).toEqual(true);
  });
});
