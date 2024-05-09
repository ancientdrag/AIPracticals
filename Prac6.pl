inpt:-
    write("Enter number : "),
    read(Num),
    write("Enter power : "),
    read(Pow),
    Ans is 1,
pwr(Num,Pow,Ans).

pwr(_,0,Ans):-
    write(Ans).

pwr(Num,Pow,Ans):-
		Pow2 is Pow-1,
                NewAns is Ans*Num,
                pwr(Num,Pow2,NewAns).

