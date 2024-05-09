oddlength([_| Tail]) :-
  evenlength(Tail).

evenlength([]).
evenlength([_| Tail]) :-
  oddlength(Tail).
