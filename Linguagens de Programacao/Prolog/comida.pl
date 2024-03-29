alimento('frango','carne').
alimento('alface','verdura').
alimento('tomate','fruta').
alimento('soja','grao').

gosta('diego','picanha').
gosta('diego','frango').
gosta('ricardo','tomate').
gosta('ricardo','soja').
gosta('alice','alface').
gosta('alice','frango').

vegetariano(X):- \+ (gosta(X,Y), alimento(Y,'carne')).

soma(X,Y,Resultado) :- Resultado is X+Y.
sub(X,Y,Resultado) :- Resultado is X-Y.
mult(X,Y,Resultado) :- Resultado is X*Y.
div(X,Y,Resultado) :- Resultado is X/Y.

pai('ivan','diego').
pai('benedito','ivan').
pai('benedito','joao').
pai('antonio','ricardo').
pai('antonio','maria').
pai('pedrosa','antonio').
pai('pedrosa','benedito').
pai('joao','pedro').

irmao(X,Y):- pai(Z,X), pai(Z,Y),X \= Y.
tio(X,Y) :- pai(Z,Y), irmao(X,Z).

maior_valor(X,Y) :-
    (   X>Y -> write('Valor de x eh maior');
    write('Valor de y eh maior')).



