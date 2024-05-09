delete_nth(0, [_ | Tail], Tail).

delete_nth(N, [Head | Tail], [Head | Tail1]) :-
  N1 is N - 1,
  delete_nth(N1, Tail, Tail1).
