%WAP to implement method to find maximum of two numbers

max(X,Y,M):-X>Y,M is X.
max(X,Y,M):-Y>X,M is Y.
max(X,Y,M):- X=Y, write("they are equal").














