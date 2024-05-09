insert_nth(I, 0, L, [I | L]).

insert_nth(I, N, [Head | Tail], [Head | Tail1]) :-
  N1 is N - 1,
  insert_nth(I, N1, Tail, Tail1).
