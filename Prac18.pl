mergelist(L1, [], L1).
mergelist([], L2, L2).

mergelist([Head1 | Tail1], [Head2 | Tail2], L3) :-
  Head1 < Head2 -> append([Head1], L2, L3),
    mergelist(Tail1, [Head2 | Tail2], L2);

  Head1 > Head2 -> append([Head2], L2, L3),
    mergelist([Head1 | Tail1], Tail2, L2);

  append([Head1 | Head2], L2, L3),
    mergelist(Tail1, Tail2, L2).
