import React from 'react';
import { shallow } from 'enzyme';
import Deck from './Deck';

describe('<Deck />', () => {
  let wrapper: any;
  const drawCard = jest.fn();

  const deckProps = {
    drawCard,
    deckImage: '/place/stuff'
  };

  beforeEach(() => wrapper = shallow(<Deck {...deckProps} />));

  it('renders without crashing', () => {
    expect(wrapper.find('div.Deck').length).toEqual(1);
  });

  it('contains a deck image', () => {
    expect(wrapper.find('img.DeckImage').length).toEqual(1);
  });

  it('responds to a click event by calling its drawCard prop', () => {
    wrapper.find('div.Deck').simulate('click');
    expect(drawCard.mock.calls.length).toBe(1);
  });
});
