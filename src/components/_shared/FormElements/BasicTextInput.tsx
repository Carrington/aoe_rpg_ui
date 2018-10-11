import * as React from 'react';

interface IBasicTextInputProps {
  value: string | string[] | undefined | number,
  required: boolean,
  changeCallback: ChangeCallback,
  filterPattern?: RegExp,
  label?: string,
}

interface IBasicTextInputState {
  errorString: string,
  value: string  | string[] | undefined | number,
}

type ChangeCallback = (value: any) => string | void;

class BasicTextInput extends React.Component<IBasicTextInputProps, IBasicTextInputState> {
    private changeCallback: ChangeCallback;

    constructor(props: IBasicTextInputProps) {
      super(props);

      this.state = {
        errorString: '',
        value: props.value,
      };

      this.changeCallback = props.changeCallback.bind(this);
    }

    public render() {
      const {
        label,
        required,
      } = this.props;

      return (
        <div>
          {this.props.label &&
            <span>{label}</span>
          }
          <input
            required={required}
            value={this.props.value}
            // tslint:disable-next-line:jsx-no-lambda
            onChange={(e) => this.checkPattern(e)}
          />
          <span>{this.state.errorString}</span>
        </div>
      )
    }

    private setError(msg: string | null | undefined | void) {
      if (!msg) {
        return;
      }

      this.setState({ errorString: msg });
    }

    private checkPattern({target}: React.ChangeEvent) {
      const {
        filterPattern
      } = this.props;

      const value = (target as HTMLInputElement).value

      if (!filterPattern) {
        this.changeCallback(value);
        return;
      }

      (filterPattern.test(value)) ? this.changeCallback(value) : this.setError('Failed validation');
    }
  }

  export default BasicTextInput;
