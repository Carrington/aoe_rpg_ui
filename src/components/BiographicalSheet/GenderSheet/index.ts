import { connect } from 'react-redux';
import { BiologicalSex } from '../../../ducks/biographicals/actions';
import { IBiographicalState } from '../../../ducks/biographicals/reducers';
import { Genders } from './../../../ducks/biographicals/actions';
import GenderSheet from './GenderSheet';

interface IGenderSheetStateProps {
  genderIdentity: Genders,
  biologicalSex: BiologicalSex,
  genderQueer: boolean
}

const mapStateToProps = (state: IBiographicalState): IGenderSheetStateProps => ({
  biologicalSex: state.biologicalSex,
  genderIdentity: state.gender,
  genderQueer: state.genderQueer
});

export default connect(mapStateToProps)(GenderSheet);
