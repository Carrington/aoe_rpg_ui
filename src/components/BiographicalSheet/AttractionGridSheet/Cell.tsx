import * as React from 'react';

interface ICellProps {
  onClick?: () => any;
  onMouseOver?: () => any;
}

const Cell: React.SFC<ICellProps> = (props: ICellProps) => (
  <td
    onClick={props.onClick}
  />
);

export default Cell;
