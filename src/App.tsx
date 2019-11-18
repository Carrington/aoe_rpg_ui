import React, { CSSProperties, HTMLAttributes } from 'react';
import clsx from 'clsx';
import Select from 'react-select';
import { createStyles, emphasize, makeStyles, useTheme, Theme } from '@material-ui/core/styles';
import Typography from '@material-ui/core/Typography';
import NoSsr from '@material-ui/core/NoSsr';
import TextField, { BaseTextFieldProps } from '@material-ui/core/TextField';
import Container from '@material-ui/core/Container';
import Paper from '@material-ui/core/Paper';
import Chip from '@material-ui/core/Chip';
import MenuItem from '@material-ui/core/MenuItem';
import CancelIcon from '@material-ui/icons/Cancel';
import { ValueContainerProps } from 'react-select/src/components/containers';
import { ControlProps } from 'react-select/src/components/Control';
import { MenuProps, NoticeProps } from 'react-select/src/components/Menu';
import { MultiValueProps } from 'react-select/src/components/MultiValue';
import { OptionProps } from 'react-select/src/components/Option';
import { PlaceholderProps } from 'react-select/src/components/Placeholder';
import { SingleValueProps } from 'react-select/src/components/SingleValue';
import { ValueType } from 'react-select/src/types';
import { Omit } from '@material-ui/types';

let iterator = 0;
const actionLimit = 4;
const steps = 10;
const actions = [];

const containerStyles: CSSProperties = {
  minHeight: '75%',
  display: 'flex',
  flexDirection: 'column',
  backgroundColor: '#f7f7fc'
}

interface OptionType {
  label: string;
  value: string;
}

type ActionOptionKeys = 'distance' | 'target' | 'stepDelay' | 'weapon';
type ActionOptionValues = 'number' | 'identifier';

type ActionOptions = { [key in ActionOptionKeys]?: ActionOptionValues };

interface ExtendedActionOptions {
  [key: string]: ActionOptions
}

const useStyles = makeStyles((theme: Theme) =>
  createStyles({
    root: {
      flexGrow: 1,
      height: 250,
      minWidth: 290,
    },
    input: {
      display: 'flex',
      padding: 0,
      height: 'auto',
    },
    valueContainer: {
      display: 'flex',
      flexWrap: 'wrap',
      flex: 1,
      alignItems: 'center',
      overflow: 'hidden',
    },
    chip: {
      margin: theme.spacing(0.5, 0.25),
    },
    chipFocused: {
      backgroundColor: emphasize(
        theme.palette.type === 'light' ? theme.palette.grey[300] : theme.palette.grey[700],
        0.08,
      ),
    },
    noOptionsMessage: {
      padding: theme.spacing(1, 2),
    },
    singleValue: {
      fontSize: 16,
    },
    placeholder: {
      position: 'absolute',
      left: 2,
      bottom: 6,
      fontSize: 16,
    },
    paper: {
      position: 'absolute',
      zIndex: 1,
      marginTop: theme.spacing(1),
      left: 0,
      right: 0,
    },
    divider: {
      height: theme.spacing(2),
    },
  }),
);

function NoOptionsMessage(props: NoticeProps<OptionType>) {
  return (
    <Typography
      color="textSecondary"
      className={props.selectProps.classes.noOptionsMessage}
      {...props.innerProps}
    >
      {props.children}
    </Typography>
  );
}

type InputComponentProps = Pick<BaseTextFieldProps, 'inputRef'> & HTMLAttributes<HTMLDivElement>;

type MuiPlaceholderProps = Omit<PlaceholderProps<OptionType>, 'innerProps'> &
  Partial<Pick<PlaceholderProps<OptionType>, 'innerProps'>>;

function inputComponent({ inputRef, ...props }: InputComponentProps) {
  return <div ref={inputRef} {...props} />;
}

function Control(props: ControlProps<OptionType>) {
  const {
    children,
    innerProps,
    innerRef,
    selectProps: { classes, TextFieldProps },
  } = props;

  return (
    <TextField
      fullWidth
      InputProps={{
        inputComponent,
        inputProps: {
          className: classes.input,
          ref: innerRef,
          children,
          ...innerProps,
        },
      }}
      {...TextFieldProps}
    />
  );
}

function Option(props: OptionProps<OptionType>) {
  return (
    <MenuItem
      ref={props.innerRef}
      selected={props.isFocused}
      component="div"
      style={{
        fontWeight: props.isSelected ? 500 : 400,
      }}
      {...props.innerProps}
    >
      {props.children}
    </MenuItem>
  );
}

function Placeholder(props: MuiPlaceholderProps) {
  const { selectProps, innerProps = {}, children } = props;
  return (
    <Typography color="textSecondary" className={selectProps.classes.placeholder} {...innerProps}>
      {children}
    </Typography>
  );
}

function SingleValue(props: SingleValueProps<OptionType>) {
  return (
    <Typography className={props.selectProps.classes.singleValue} {...props.innerProps}>
      {props.children}
    </Typography>
  );
}

function ValueContainer(props: ValueContainerProps<OptionType>) {
  return <div className={props.selectProps.classes.valueContainer}>{props.children}</div>;
}

function MultiValue(props: MultiValueProps<OptionType>) {
  return (
    <Chip
      tabIndex={-1}
      label={props.children}
      className={clsx(props.selectProps.classes.chip, {
        [props.selectProps.classes.chipFocused]: props.isFocused,
      })}
      onDelete={props.removeProps.onClick}
      deleteIcon={<CancelIcon {...props.removeProps} />}
    />
  );
}

function Menu(props: MenuProps<OptionType>) {
  return (
    <Paper square className={props.selectProps.classes.paper} {...props.innerProps}>
      {props.children}
    </Paper>
  );
}

const components = {
  Control,
  Menu,
  MultiValue,
  NoOptionsMessage,
  Option,
  Placeholder,
  SingleValue,
  ValueContainer,
};

const suggestions: OptionType[] = [
  {
    label: 'Movement',
    value: 'move'
  },
  {
    label: 'Attack (Punch)',
    value: 'attack.punch'
  },
  {
    label: 'Attack (Kick)',
    value: 'attack.kick'
  },
  {
    label: 'Attack (Dagger)',
    value: 'attack.dagger'
  },
  {
    label: 'Dodge',
    value: 'dodge'
  },
  {
    label: 'Block (arm)',
    value: 'block.arm'
  },
  {
    label: 'Parry (dagger)',
    value: 'parry.dagger'
  }
];

const extendedActionOptions: ExtendedActionOptions = {
  punch: {
    'target': 'identifier'
  },
  move: {
    'distance': 'number'
  },
  dagger: {
    'weapon': 'identifier'
  },
  arm: {
    'weapon': 'identifier'
  }
}


function IntegrationReactSelect() {
  const classes = useStyles();
  const theme = useTheme();
  const [single, setSingle] = React.useState<ValueType<OptionType>>(null);

  const handleChangeSingle = (value: ValueType<OptionType>) => {
    setSingle(value);
  };

  const selectStyles = {
    input: (base: CSSProperties) => ({
      ...base,
      color: theme.palette.text.primary,
      '& input': {
        font: 'inherit',
      },
    }),
  };

  return (
    <div className={classes.root}>
      <NoSsr>
        <Select
          classes={classes}
          styles={selectStyles}
          inputId={`action-${iterator}`}
          TextFieldProps={{
            label: 'Action',
            InputLabelProps: {
              htmlFor: `action-${iterator}`,
              shrink: true,
            },
          }}
          placeholder="Action"
          options={suggestions}
          components={components}
          value={single}
          onChange={handleChangeSingle}
        />
      </NoSsr>
    </div>
  )
}

const actionsForStep = (index: number) => true;


const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        AoE RPG System - Actions
      </header>
      <div
        style={containerStyles}
      >
        <Container maxWidth="lg">
          <div>
            <NoSsr>
              {
                new Array(steps).fill(0).map((_, index: number) => (
                  <div>
                    <div className="action-cell">
                      {
                        actionsForStep(index) &&
                        IntegrationReactSelect()
                      }
                    </div>
                  </div>
                ))
              }

            </NoSsr>
          </div>
        </Container>
      </div>
    </div>
  );
}

export default App;
