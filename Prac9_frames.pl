% Define frame properties for animals
animal_properties(dog, [type(mammal), has_tail(yes), has_legs(4), sound(bark)]).
animal_properties(cat, [type(mammal), has_tail(yes), has_legs(4), sound(meow)]).
animal_properties(bird, [type(bird), has_wings(yes), has_legs(2), sound(chirp)]).

% Define frame properties for fruits
fruit_properties(apple, [type(fruit), color(red), taste(sweet)]).
fruit_properties(banana, [type(fruit), color(yellow), taste(sweet)]).
fruit_properties(orange, [type(fruit), color(orange), taste(sweet)]).

% Querying properties of an animal
animal_properties_query(Animal, Property) :-
    animal_properties(Animal, Properties),
    member(Property, Properties).

% Querying properties of a fruit
fruit_properties_query(Fruit, Property) :-
    fruit_properties(Fruit, Properties),
    member(Property, Properties).
