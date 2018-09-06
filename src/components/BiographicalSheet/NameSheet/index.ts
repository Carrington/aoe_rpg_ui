import { connect } from "react-redux";
import { INameState } from '../../../ducks/biographicals/reducers';
import NameSheet from "./NameSheet";

interface INameStateProps {
  names: string[]
}

const mapStateToProps = (state: INameState): INameStateProps => ({
  names: state.names
});

export default connect(mapStateToProps)(NameSheet);
