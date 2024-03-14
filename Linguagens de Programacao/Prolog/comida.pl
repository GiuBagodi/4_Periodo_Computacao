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

vegetariano(X):- gosta(X,Y), alimento(Y,Z),Z\= 'carne'.
