% Askings
:- dynamic query_status/1, who_is_here/0.
% People at places and statuses
%:- dynamic adult_at/2, kid_at/2. %Location, State
:- dynamic adult_at/3, kid_at/3. %Name, Location, State
:- dynamic kids_here/1, adults_here/1. 
