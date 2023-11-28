person(anna,30,'Czytanie ksiazek').
person(maria,35,'jogging').
person(piotr,28,'Gry komputerowe').
person(adam,22,'rower').
person(ewa,22,'p').

compare_age(X,X2):-person(X,Y,_Z),person(X2,Y2,_Z2),
Y<Y2,
format('~w jest mlodszy/mlodsza od ~w.~n', [X, X2]).

compare_age(X,X2):-person(X,Y,_Z),person(X2,Y2,_Z2),
Y=:=Y2,
format('~w maja taki sam wiek ~w.~n', [X, X2]).

compare_age(X,X2):-person(X,Y,_Z),person(X2,Y2,_Z2),
Y>Y2,
format('~w jest jest starszy/starsza od ~w.~n', [X, X2]).
