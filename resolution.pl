%Monkey_Banana_Sticky problem

/*
domain
	name=symbol
predicates
	state(name, name, name, name, name)
	action(name, name, name)
	canshake(name) 
*/


%Facts
do(
	state(middle, onchair, middle, sticky, hasnot),
	grasp,
	state(middle, onchair, middle, nosticky, has)
).

do(
	state(P, onfloor, P,sticky, H),
    climb,
    state(P, onbox, P, sticky, H)
 ).

do(
	state(P, onfloor, P,nosticky, H),
    takeSticky,
    state(P, onbox, P, sticky, H)
).
do(
	state(P1, onfloor, P1,nosticky, H),
    push(P1, P2),
    state(P2, onfloor, P2,nosticky, H)
).
do(
	state(P1, onfloor, B,nosticky, H),
    walk(P1, P2),
    state(P2, onfloor, B, H)
).
canget(
	state(_, _, _, sticky, has)
).

%Rules
canget(State1):-
    do(State1, _, State2),
    canget(State2).

%queries



