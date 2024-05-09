% Define the context-free grammar rules
% S -> epsilon | aSb
s --> [].
s --> [a], s, [b].

% Predicate to recognize if a given list belongs to the language
recognize(Word) :-
    phrase(s, Word).
