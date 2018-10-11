import * as React from 'react';

interface IRowProps {
  activeCell: number;
  activeColor: string;
  inactiveColor: string;
  onClick: (e: React.MouseEvent<HTMLTableCellElement>) => void;
  cellNumber: number;
  id: string;
}

const Row: React.SFC<IRowProps> = (props: IRowProps) =>
  (
    <tr
      id={props.id}
    >
      {
        Array(props.cellNumber).fill(1).map((_, index) =>
          (
            <td
              style={{
                backgroundColor: (props.activeCell === index) ? props.activeColor : props.inactiveColor,
                cursor: 'pointer',
                height: '20px',
                width: '20px',
              }}
              onClick={props.onClick}
              data-row={props.id}
              data-value={index}
            >
              {index + 1}
            </td>
          )
        )
      }
    </tr>
  );

  export default Row;
