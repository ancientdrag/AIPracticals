sumlist([], 0).                            % Base Call
sumlist([Head | Tail], S) :-
  sumlist(Tail, S1), S is Head + S1.     % Recursive Call
