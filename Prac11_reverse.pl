% Base case: Reversing an empty list results in an empty list
reverse_it([], []).

% Rule to reverse a non-empty list
reverse_it([Head|Tail], Reversed) :-
    reverse_it(Tail, ReversedTail),
    append_it(ReversedTail, [Head], Reversed).

% Helper predicate to append two lists
append_it([], L, L).
append_it([H|T], L, [H|R]) :-
    append_it(T, L, R).
