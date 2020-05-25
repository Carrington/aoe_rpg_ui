import * as React from 'react';
import { CardType } from '../ducks/Cards';

interface DeckProps {
    drawCard: any;
    deckImage: string;
    cards: CardType[];
}

const Deck: React.SFC<DeckProps> = ({drawCard, deckImage}) => (
    <div
        className="Deck"
        onClick={(event) => drawCard()}
    >
        <img className="DeckImage" src={deckImage} alt="deck" />
    </div>
);

export default Deck;
