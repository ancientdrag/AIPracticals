go:-
    write("Enter number N1: "),
    read(N1),nl,
    write("Enter number N2: "),
    read(N2),nl,

    multi(N1,N2,RS).

    multi(N1,N2,RS):-
    RS is N1 * N2,
    write("Product(R) is ="),
    write(RS).

