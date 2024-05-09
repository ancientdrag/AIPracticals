nth_element(N, [Head | _], X) :-
  N == 0, X is Head.                    % Base Case

nth_element(N, [_ | Tail], X) :-
  N1 is N - 1,
  nth_element(N1, Tail, X).             % Recursive Call

% N is the position(index) of the element in the list.
