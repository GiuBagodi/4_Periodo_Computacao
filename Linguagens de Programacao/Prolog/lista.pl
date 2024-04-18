%exemplo de for em prolog
conta_ate_dez(10) :- write(10).
conta_ate_dez(X) :- write(X), Y is X+1, conta_ate_dez(Y).

%exemplo de lista
pertence(X, [X|_]).
pertence(X, [_|C]) :- pertence(X, C).

%achando o ultimo elemento da lista
ultimo([Elem],Elem).
ultimo([_|Cauda],Elem) :- ultimo(Cauda,Elem).

%soma de elementos de lista
%toda vez que a lista estiver vazia, a soma eh zero
soma([], 0).
soma([H|T], S) :- soma(T, S1), S is S1 + H.

