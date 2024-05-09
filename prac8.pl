memb(X, [X|_]).
memb(X, [_|Rest]) :-
    memb(X, Rest).
