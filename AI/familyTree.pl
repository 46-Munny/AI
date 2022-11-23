male(atab).
male(fazlu).
male(ruhul).
male(anamul).
male(babul).
male(sujon).
male(maruf).
female(amena).
female(mazeda).
female(badena).
female(nazma).
female(munny).
 
parent(atab,fazlu).
parent(amena,fazlu).
parent(atab,ruhul).
parent(amena,ruhul).
parent(atab,anamul).
parent(amena,anamul).
parent(atab,babul).
parent(amena,babul).
parent(atab,sujon).
parent(amena,sujon).
parent(atab,badena).
parent(amena,badena).
parent(atab,nazma).
parent(amena,nazma).
parent(fazlu,maruf).
parent(mazeda,maruf).
parent(fazlu,munny).
parent(mazeda,munny).

 

father(X,Y):- male(X),
    parent(X,Y).
 
mother(X,Y):- female(X),
    parent(X,Y).
 
grandfather(X,Y):- male(X),
    parent(X,Z),
    parent(Z,Y).
 
grandmother(X,Y):- female(X),
    parent(X,Z),
    parent(Z,Y).
 
sister(X,Y):- %(X,Y or Y,X)%
    female(X),
    father(F, Y), father(F,X),X \= Y.
 
sister(X,Y):- female(X),
    mother(M, Y), mother(M,X),X \= Y.
 
aunt(X,Y):- female(X),
    parent(Z,Y), sister(Z,X).
 
brother(X,Y):- %(X,Y or Y,X)%
    male(X),
    father(F, Y), father(F,X),X \= Y.
 
brother(X,Y):- male(X),
    mother(M, Y), mother(M,X),X \= Y.
 
uncle(X,Y):-
    parent(Z,Y), brother(Z,X).