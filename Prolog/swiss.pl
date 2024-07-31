male(albert).
male(jackson).
male(dominic).
male(david).
male(kerry).

female(alice).
female(barbara).
female(carol).
female(diana).

father(albert, jackson).
father(albert, barbara).
father(jackson, charlie).
father(jackson, carol).
father(dominic, david).
father(dominic, diana).

mother(alice, jackson).
mother(alice, barbara).
mother(barbara, dominic).
mother(barbara, carol).
mother(carol, david).
mother(carol, diana).


parent(X, Y) :- father(Z, Y).
parent(X, Y) :- mother(X, Y).

grandparent(X, Y) :-parent(X, Z), parent(Z, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
