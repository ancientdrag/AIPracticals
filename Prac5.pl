ip:-
	write("Enter x : "),
        read(X),
	write("Enter y : "),
        read(Y),
        gcd(X,Y).

gcd(X,X):-
    write("Result = "), write(X).

gcd(0,_):-
    write("Result = 0").

gcd(_,0):-
    write("Result = 0").

gcd(X,Y):-
    X>=Y,
    Xn is X-Y, gcd(Xn,Y);
    Xn is Y-X, gcd(X,Xn).
