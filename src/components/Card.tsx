import * as React from 'react';

const Card: React.SFC<any> = ({ suit, number, image, description }) => (
    <div>
        <div className='upper-left card-number'>
            {{number}} {{suit}}
        </div>
        <img src={image} />
        <div className="description-block">
            {{ description }}
        </div>
        <div className='lower-left card-number'>
            {{number}} {{suit}}
        </div>
    </div>
)


export default Card;