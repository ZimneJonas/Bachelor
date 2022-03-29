%---------------------------------------
% domain
%---------------------------------------

% utils
boolean(true).
boolean(false).


% types
type(type("object")).

% variables
variable(variable(("clear", X1))) :- has(X1, type("object")).
variable(variable(("on", X1, X2))) :- has(X1, type("object")), has(X2, type("object")).
variable(variable(("smaller", X1, X2))) :- has(X1, type("object")), has(X2, type("object")).

contains(X, value(X, B)) :- variable(X), boolean(B).

% actions
action(action(("move", X1, X2, X3))) :- has(X1, type("object")), has(X2, type("object")), has(X3, type("object")).
precondition(action(("move", X1, X2, X3)), variable(("smaller", X3, X1)), value(variable(("smaller", X3, X1)), true)) :- action(action(("move", X1, X2, X3))).
precondition(action(("move", X1, X2, X3)), variable(("on", X1, X2)), value(variable(("on", X1, X2)), true)) :- action(action(("move", X1, X2, X3))).
precondition(action(("move", X1, X2, X3)), variable(("clear", X1)), value(variable(("clear", X1)), true)) :- action(action(("move", X1, X2, X3))).
precondition(action(("move", X1, X2, X3)), variable(("clear", X3)), value(variable(("clear", X3)), true)) :- action(action(("move", X1, X2, X3))).
postcondition(action(("move", X1, X2, X3)), effect(unconditional), variable(("clear", X2)), value(variable(("clear", X2)), true)) :- action(action(("move", X1, X2, X3))).
postcondition(action(("move", X1, X2, X3)), effect(unconditional), variable(("on", X1, X3)), value(variable(("on", X1, X3)), true)) :- action(action(("move", X1, X2, X3))).
postcondition(action(("move", X1, X2, X3)), effect(unconditional), variable(("on", X1, X2)), value(variable(("on", X1, X2)), false)) :- action(action(("move", X1, X2, X3))).
postcondition(action(("move", X1, X2, X3)), effect(unconditional), variable(("clear", X3)), value(variable(("clear", X3)), false)) :- action(action(("move", X1, X2, X3))).

%---------------------------------------
% problem
%---------------------------------------

% objects
constant(constant("peg1")).
has(constant("peg1"), type("object")).

constant(constant("peg2")).
has(constant("peg2"), type("object")).

constant(constant("peg3")).
has(constant("peg3"), type("object")).

constant(constant("d1")).
has(constant("d1"), type("object")).

constant(constant("d2")).
has(constant("d2"), type("object")).

constant(constant("d3")).
has(constant("d3"), type("object")).

% initial state
initialState(variable(("smaller", constant("peg1"), constant("d1"))), value(variable(("smaller", constant("peg1"), constant("d1"))), true)).
initialState(variable(("smaller", constant("peg1"), constant("d2"))), value(variable(("smaller", constant("peg1"), constant("d2"))), true)).
initialState(variable(("smaller", constant("peg1"), constant("d3"))), value(variable(("smaller", constant("peg1"), constant("d3"))), true)).
initialState(variable(("smaller", constant("peg2"), constant("d1"))), value(variable(("smaller", constant("peg2"), constant("d1"))), true)).
initialState(variable(("smaller", constant("peg2"), constant("d2"))), value(variable(("smaller", constant("peg2"), constant("d2"))), true)).
initialState(variable(("smaller", constant("peg2"), constant("d3"))), value(variable(("smaller", constant("peg2"), constant("d3"))), true)).
initialState(variable(("smaller", constant("peg3"), constant("d1"))), value(variable(("smaller", constant("peg3"), constant("d1"))), true)).
initialState(variable(("smaller", constant("peg3"), constant("d2"))), value(variable(("smaller", constant("peg3"), constant("d2"))), true)).
initialState(variable(("smaller", constant("peg3"), constant("d3"))), value(variable(("smaller", constant("peg3"), constant("d3"))), true)).
initialState(variable(("smaller", constant("d1"), constant("d1"))), value(variable(("smaller", constant("d1"), constant("d1"))), true)).
initialState(variable(("smaller", constant("d2"), constant("d1"))), value(variable(("smaller", constant("d2"), constant("d1"))), true)).
initialState(variable(("smaller", constant("d3"), constant("d1"))), value(variable(("smaller", constant("d3"), constant("d1"))), true)).
initialState(variable(("smaller", constant("d2"), constant("d2"))), value(variable(("smaller", constant("d2"), constant("d2"))), true)).
initialState(variable(("smaller", constant("d3"), constant("d2"))), value(variable(("smaller", constant("d3"), constant("d2"))), true)).
initialState(variable(("clear", constant("peg2"))), value(variable(("clear", constant("peg2"))), true)).
initialState(variable(("clear", constant("peg3"))), value(variable(("clear", constant("peg3"))), true)).
initialState(variable(("clear", constant("d1"))), value(variable(("clear", constant("d1"))), true)).
initialState(variable(("on", constant("d3"), constant("peg1"))), value(variable(("on", constant("d3"), constant("peg1"))), true)).
initialState(variable(("on", constant("d2"), constant("d3"))), value(variable(("on", constant("d2"), constant("d3"))), true)).
initialState(variable(("on", constant("d1"), constant("d2"))), value(variable(("on", constant("d1"), constant("d2"))), true)).

initialState(X, value(X, false)) :- variable(X), not initialState(X, value(X, true)).

% goal
goal(variable(("on", constant("d3"), constant("peg3"))), value(variable(("on", constant("d3"), constant("peg3"))), true)).
goal(variable(("on", constant("d2"), constant("d3"))), value(variable(("on", constant("d2"), constant("d3"))), true)).
goal(variable(("on", constant("d1"), constant("d2"))), value(variable(("on", constant("d1"), constant("d2"))), true)).
