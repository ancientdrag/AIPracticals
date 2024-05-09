palindrome([]) :-
  write('Palindrome!').

palindrome([_]) :-
  write('Palindrome!').

palindrome(L) :-
  append([H|T], [H], L),
  palindrome(T);
  write('Non-Palindrome!').
