:- dynamic status/2.

navigable(X, Y) :- connected(X, Y), status(Y, clear).

% Define a rule to find a path to an exit from a room
path_to_exit([Room, Exit]) :-
    exit(Exit),              
    navigable(Room, Exit).

path_to_exit([Room, Next | Path]) :-
    navigable(Room, Next),
    path_to_exit([Next | Path]).

% The map
connected(r0, r1).
connected(r1, r2).
connected(r2, r3).
connected(r3, r4).
connected(r4, r5).
connected(r5, r6).
connected(r6, r7).
connected(r7, r8).
connected(r8, r9).
connected(r9, street). 

connected(r0, corridor).
connected(r1, corridor).
connected(r2, corridor).
connected(r3, corridor).
connected(r4, corridor).
connected(r5, corridor).
connected(r6, corridor).
connected(r7, corridor).
connected(r8, corridor).
connected(r9, corridor).
connected(corridor, street).

exit(street).