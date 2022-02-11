%---------------------------------------
% domain
%---------------------------------------

% utils
boolean(true).
boolean(false).

% types
type(type("thing")).

has(X, type(T2)) :- has(X, type(T1)), inherits(type(T1), type(T2)).

% variables
variable(variable(("can_hear", X1))) :- has(X1, type("thing")).
variable(variable(("said_hello_to", X1))) :- has(X1, type("thing")).

contains(X, value(X, B)) :- variable(X), boolean(B).

% actions
action(action(("say-hello", X1))) :- has(X1, type("thing")).
precondition(action(("say-hello", X1)), variable(("said_hello_to", X1)), value(variable(("said_hello_to", X1)), false)) :- action(action(("say-hello", X1))).
precondition(action(("say-hello", X1)), variable(("can_hear", X1)), value(variable(("can_hear", X1)), true)) :- action(action(("say-hello", X1))).
postcondition(action(("say-hello", X1)), effect(unconditional), variable(("said_hello_to", X1)), value(variable(("said_hello_to", X1)), true)) :- action(action(("say-hello", X1))).

%---------------------------------------
% problem
%---------------------------------------

% objects
constant(constant("world")).
has(constant("world"), type("thing")).

% initial state
initialState(variable(("can_hear", constant("world"))), value(variable(("can_hear", constant("world"))), true)).

initialState(X, value(X, false)) :- variable(X), not initialState(X, value(X, true)).

% goal
goal(variable(("said_hello_to", constant("world"))), value(variable(("said_hello_to", constant("world"))), true)).
