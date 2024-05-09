start :-
write('Enter a positive number : '), read(N1), fac(N1, 1).

fac(0, F) :-
    write('Factorial is '), write(F).
fac(1, F) :-
    write('Factorial is '), write(F).
fac(N, F) :-
    N > 1, NewF is F * N, NewN is N - 1,fac(NewN, NewF).
