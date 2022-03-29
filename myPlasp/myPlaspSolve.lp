#const horizon=1.


time(0..horizon).


% Establish initial state


% Value = Variable+time > double necessary?
holds( Value, 0) :- initialState(Variable, Value).


% Compute derived predicates


% conjunctive preconditions
% satisfied() = for con-/disjunction statements check
% satisfied(type) = not necessary? #CHANGED
satisfied(DerivedPredicate, T) :- derivedPredicate(DerivedPredicate, type(and)), holds(Value, T) : precondition(DerivedPredicate, type(and), Variable, Value); time(T).

% disjunctive preconditions
satisfied(DerivedPredicate, T) :- precondition(DerivedPredicate, type(or), Variable, Value), holds(Variable, Value, T), time(T).

holds(Value, T) :- satisfied(DerivedPredicate, T), postcondition(DerivedPredicate, Type, effect(unconditional), DerivedVariable, Value).

holds(value(DerivedVariable, false), T) :- derivedVariable(DerivedVariable), not holds(value(DerivedVariable, true), T), time(T).


% Perform actions


1 {occurs(Action, T) : action(Action)} 1 :- time(T), T > 0.

% Check preconditions
:- occurs(Action, T), precondition(Action, Variable, Value), not holds( Value, T - 1).

% Apply effects
caused(Variable, Value, T) :-
	occurs(Action, T),
	postcondition(Action, Effect, Variable, Value),
	holds(ValuePre, T - 1) : precondition(Effect, VariablePre, ValuePre).


% Inertia rules


modified(Variable, T) :- caused(Variable, Value, T).

holds(Value, T) :- caused(Variable, Value, T).
holds(Value, T) :- holds(value(Value,B), Value, T - 1), value(Value,B)=variable(V), not modified(variable(V), T), time(T).


% Check that variables have unique values
:- variable(Variable), not 1 {holds(Value, T) : contains(Variable, Value)} 1, time(T).

% ?
:- mutexGroup(MutexGroup), not {holds(Value, T) : contains(MutexGroup, Variable, Value)} 1, time(T).



:- goal(Variable, Value), not holds(Value, horizon).


#show holds/2.
