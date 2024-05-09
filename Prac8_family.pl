% Define family relationships
parent(john, mary).
parent(john, lisa).
parent(peter, john).
parent(peter, anne).
parent(susan, mary).
parent(susan, lisa).

% Define genders
male(john).
male(peter).
female(mary).
female(lisa).
female(anne).
female(susan).

% Define rules for different relationships
father(Father, Child) :- parent(Father, Child), male(Father).
mother(Mother, Child) :- parent(Mother, Child), female(Mother).
grandparent(Grandparent, Grandchild) :- parent(Grandparent, Parent), parent(Parent, Grandchild).
sister(X,Y) :- female(X), mother(M,Y), mother(M,X), X\=Y.
sister(X,Y) :- female(X), father(F,Y), father(F,X), X\=Y.

brother(X,Y):- male(X), father(F,Y), father(F,X), X\=Y.
brother(X,Y):- male(X), mother(F,Y), mother(F,X), X\=Y.

uncle(X,Y) :- parent(Z,Y), brother(Z,X).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z),
    ancestor(Z,Y).

