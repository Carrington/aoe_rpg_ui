import React from 'react';
import {
    getByLabelText,
    getByText,
    getByTestId,
    queryByTestId,
    render,
    // Tip: all queries are also exposed on an object
    // called "queries" which you could import here as well
    wait,
} from '@testing-library/dom'
// adds special assertions like toHaveTextContent
import '@testing-library/jest-dom/extend-expect'

import './Deck';

it('shows all the cards on click', () => {
    const
})