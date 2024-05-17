:- dynamic status/2.

navigable(X, Y) :- connected(X, Y), status(Y, clear).

% Define a rule to find a path to an exit from a room
path_to_exit([Room, Exit]) :-
    exit(Exit),              
    navigable(Room, Exit).

path_to_exit([Room, Next | Path]) :-
    navigable(Room, Next),
    % \+ member(Room, Path),   
    path_to_exit([Next | Path]).

% The map
connected(r1, r2).
connected(r2, r3).
connected(r3, r4).
connected(r4, r5).
connected(r5, street). 

connected(r1, corridor).
connected(r2, corridor).
connected(r3, corridor).
connected(r4, corridor).
connected(r5, corridor).
connected(corridor, street).

exit(street).