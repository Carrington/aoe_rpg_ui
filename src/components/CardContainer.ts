import Card from './Card';
import { connect } from 'react-redux';
import { AppState } from '../ducks/Root';

interface ownProps {
  cardId: string;
}

const mapPropsToState = (state: AppState, ownProps: ownProps) =>
  state.actionDeck.cards[ownProps.cardId];


export default connect(mapPropsToState)(Card);
