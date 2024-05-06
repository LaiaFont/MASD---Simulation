 % Define predicate for where I am
:- dynamic my_place/1.
:- dynamic tick/1.
:- dynamic connected/2.
:- dynamic going/2.
:- dynamic scape/0.
:- dynamic exit/1.

 
% Connection is symmetric 
% connected(X,Y) :- connected(Y,X).

navigable(X, Y) :- connected(X, Y). % ; connected(Y, X).


% Define a rule to find a path to an exit from a room
path_to_exit([Room, Exit]) :-
    exit(Exit),              
    navigable(Room, Exit).

path_to_exit([Room, Next | Path]) :-
    navigable(Room, Next),
    % \+ member(Room, Path),   
    path_to_exit([Next | Path]).

