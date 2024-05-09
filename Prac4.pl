start1:-
    write('Enter N : '),
    read(N), fibo(N,T),
    write('Term is '),
    write(T).
    fibo(0,0).
    fibo(1,1).

    fibo(N,T):-N>1,
    N1 is N-1,
    fibo(N1,R1),
    N2 is N-2,
    fibo(N2,R2),
    T is R1+R2.























