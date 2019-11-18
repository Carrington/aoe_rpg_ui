import React from 'react';
import { connect} from 'react-redux';
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import MenuItem from '@material-ui/core/MenuItem';


interface ActionType {
  label: string;
  id: number;
}

interface ActionSelectorProps {
  action: any;
  index: number;
  showActionList: boolean;
  availableActions: ActionType[];
  updateAction: any;
}

const ActionSelectorBase: React.SFC<ActionSelectorProps> = ({
  action,
  updateAction,
  index,
  availableActions,
  showActionList = false
}) => (
  <div>
    <button
      onClick={() => null}
    >
      {action.icon || 'Blank'}
    </button>
    {
      (showActionList) &&
      <FormControl>
        <Select
          value={action.actionValue.id}
          onChange={(event) => updateAction(index, event.target.value)}
        >
          {
            availableActions.map((availAction: any) => (
              <MenuItem value={availAction.id}>{availAction.label}</MenuItem>
            ))
          }
        </Select>
      </FormControl>
    }
  </div>
);

const mapStateToProps = (state: any) => ({
  availableActions: state.availableActions
});

const mapDispatchToProps = ({
  updateAction: (index: number, action: ActionType) => ({ type: 'UPDATE_ACTION', value: { index, action }})
})

const ActionSelector = connect(mapStateToProps, mapDispatchToProps)(ActionSelectorBase);

export default ActionSelector;