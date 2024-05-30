% My own name
:- dynamic my_name/1.
% Ticker
:- dynamic tick/0.
% Movement related predicates
:- dynamic my_place/1, going/2.
% Requests
:- dynamic query_status/1, who_is_here/0.
% People at places and statuses
%:- dynamic adult_at/2, kid_at/2. %Location, State
:- dynamic adult_at/3, kid_at/3. %Name, Location, State
% People status
:- dynamic my_status/1.
% Management of kids 
:- dynamic guiding/1.
:- dynamic recompute_status/0.
% Courage
:- dynamic my_courage/1, braver_here/0. %Name, Location, Courage

% Goals
:- dynamic keep_calm/0, scape/0, wait_for_location/0, obey/1.

concat_strings(Name, Str1, Str2, Result) :-
	atom_concat("[", Name, R1),
	atom_concat(R1, "]: ", R2),
	atom_concat(R2, Str1, R3),
    	atom_concat(R3, Str2, Result).
    	