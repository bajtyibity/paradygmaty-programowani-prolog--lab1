parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).
male( jim).
male( tom).              % Tom is male
male( bob).

child(X):-parent(_Y,X).

mother(X):-female(X),parent(X,_Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

sister(X,Y):- parent(Z,X),parent(Z,Y),female(X).

predecessor(X,Y):-parent(X,Y),predecessor(Y,_Z).