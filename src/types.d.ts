
export interface Action {
    type: string;
    payload?: any;
}

export interface Handler<State> {
    [member: string]: (action: Action, state: State) => State;
}