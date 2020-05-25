import { drawCard } from '../ducks/Cards';
import { connect } from 'react-redux';
import Deck from './Deck';

const mapDispatchToProps = {
  drawCard
};

const mapStateToProps = (state: any) => ({
  deckImage: state.deckImage,
  cards: state.cards
});

export default connect(mapStateToProps, mapDispatchToProps)(Deck);
