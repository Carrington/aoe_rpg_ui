import { connect } from "react-redux";
import { Dispatch } from 'redux';
import { ChangeNameAction } from '../../../ducks/biographicals/actions';
import { IApplicationState } from '../../../ducks/index';
import { changeName, IName } from './../../../ducks/biographicals/actions';
import NameSheet from "./NameSheet";

interface INameStateProps {
  names: string[]
}

interface INameDispatchProps {
  changeName: ChangeNameAction
}

export type INameSheetProps = INameStateProps & INameDispatchProps;

const mapStateToProps = ({ biographicalReducer }: IApplicationState): INameStateProps => ({
  names: biographicalReducer.names
});

const mapDispatchToProps = (dispatch: Dispatch): INameDispatchProps => ({
  changeName: (names: IName[]) => dispatch(changeName(names))
})

export default connect(mapStateToProps, mapDispatchToProps)(NameSheet);
