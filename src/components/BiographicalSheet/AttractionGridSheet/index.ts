import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { IApplicationState } from '../../../ducks';
import { changeAttractionGrid, IAttractionGrid, IAttractionValue } from './../../../ducks/biographicals/actions';
import AttractionGridSheet from './AttractionGridSheet';

interface IAttractionGridSheetStateProps {
  attractionGrid: IAttractionGrid;
}

interface IAttractionGridSheetDispatchProps {
  onChangeAttractionValue: (value: IAttractionValue) => void;
}

export type IAttractionGridSheetProps = IAttractionGridSheetStateProps & IAttractionGridSheetDispatchProps;

const mapStateToProps = ({ biographicalReducer }: IApplicationState): IAttractionGridSheetStateProps => ({
  attractionGrid: biographicalReducer.attractionGrid
});

const mapDispatchToState = (dispatch: Dispatch): IAttractionGridSheetDispatchProps => ({
  onChangeAttractionValue: (value: IAttractionValue) => dispatch(changeAttractionGrid([value]))
})

export default connect(mapStateToProps, mapDispatchToState)(AttractionGridSheet);
