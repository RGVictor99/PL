pai(carlos, shirley).
pai(walter,charles).
pai(walter, james).
pai(walter, fernanda).
pai(walter, roberta).
pai(james, rafael).
pai(james, eduarda).
pai(alex, victor).
pai(alex, samara).

mae(maria, shirley).
mae(shirley, charles).
mae(shirley, james).
mae(shirley, fernanda).
mae(shirley, roberta).
mae(fernanda, clara).
mae(fernanda, sofia).
mae(roberta, victor).
mae(roberta, samara).

avo(X, Y) :- pai(X, Z), pai(Z, Y).
avo(X, Y) :- pai(X, Z), mae(Z, Y).
avoh(X, Y) :- mae(X, Z), mae(Z, Y).
avoh(X, Y) :- mae(X, Z), pai(Z, Y).

neto(X, Y) :- pai(Y,Z), mae(Z, X).
neto(X, Y) :- mae(Y,Z), mae(Z, X).

irmao(X, Y) :- pai(Z, X), pai(Z, Y), X \= Y.

tio(X, Y) :- irmao(X, Z), mae(Z, Y).

primo(X, Y) :- mae(Z, X), mae(W, Y), irmao(Z, W).
primo(X, Y) :- pai(Z, X), mae(W, Y), irmao(Z, W).
primo(X, Y) :- mae(Z, X), pai(W, Y), irmao(Z, W).

bisavo(X, Y) :- pai(X, Z), mae(Z, W), mae(W, Y).
bisavo(X, Y) :- pai(X, Z), mae(Z, W), pai(W, Y).

bisavoh(X, Y) :- mae(X, Z), mae(Z, W), mae(W, Y).
bisavoh(X, Y) :- mae(X, Z), mae(Z, W), pai(W, Y).