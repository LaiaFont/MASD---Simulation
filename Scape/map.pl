% Define the rooms and their connections
connected(kitchen, living_room).
connected(living_room, hallway).
connected(hallway, bathroom).
connected(hallway, bedroom).
connected(bedroom, street).

% Define exits
exit(street).

 % Start ticks
 tick(0).