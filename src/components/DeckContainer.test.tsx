import React from 'react';
import { mount } from 'enzyme';
import { Provider } from 'react-redux';
import DeckContainer from './DeckContainer';
import Deck from './Deck';

const dispatchMock = jest.fn();

const storeFake = (state: any) => ({
    default: jest.fn(),
    subscribe: jest.fn(),
    dispatch: dispatchMock,
    getState: () => state,
    replaceReducer: () => {}
});

describe('Deck Container', () => {
  let wrapper;
  let component: any;
  let container;

  beforeEach(() => {
    jest.resetAllMocks();

    const store = storeFake({
      deckImage: 'foo/bar',
      cards: [
        {
          id: 1,
          number: 1,
          suit: 'SWORDS'
        },
        {
          id: 2,
          number: 3,
          suit: 'PENTACLES'
        }
      ]
    });

    wrapper = mount(
      <Provider store={store as any}>
        <DeckContainer />
      </Provider>
    );

    container = wrapper.find(DeckContainer);
    component = container.find(Deck);
  });

  it('renders both the container and component', () => {
    expect(container.length).toEqual(1);
    expect(component.length).toEqual(1);
  });

  it('dispatches the appropriate action via drawCard', () => {
    component.simulate('click');

    expect(dispatchMock.mock.calls.length).toBe(1);
    expect(dispatchMock.mock.calls[0][0].type).toEqual('CARDS/DRAW_CARD')
  });
});
