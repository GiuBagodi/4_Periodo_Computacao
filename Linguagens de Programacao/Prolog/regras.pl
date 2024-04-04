%nome regra () :- o teste ou outras regras que precisa

verifica_num(X) :- X >= 0, write("Numero positivo").
verifica_num(X) :- X < 0, write("Numero negativo").

par_impar(X) :- X mod 2 =:= 0, write("Par").
par_impar(X) :- X mod 2 =\= 0, write("Impar").

fatorial(0,1):- !.
fatorial(N,F):- N1 is N-1,
    fatorial(N1,F1),
    F is F1 * N.

fib(0,1) :- !.
fib(1,1) :- !.
fib() :-
    N>1,
    N1 is N-1,
    N2 is N-2.
