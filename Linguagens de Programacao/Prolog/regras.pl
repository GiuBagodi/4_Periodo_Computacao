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
fib(N,F) :-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fib(N1,F1),
    fib(N2,F2),
    F is F1+F2.

media(X) :- X >= 6, write("Aprovado").
media(X) :- X < 6, write("Reprovado").

nota(diego,4).
nota(pedro,7).
nota(ricardo,6).
nota(leandro,0).

aprovado(Nome) :-
    nota(Nome,Nota),
    Nota >= 6, write("Aprovado").
reprovado(Nome) :-
    nota(Nome,Nota),
    Nota <6, write("Reprovado").

soma(Valor1,Valor2,Resultado) :-
    Resultado is Valor1 + Valor2.
div(Val1,Val2,Res) :-
    (   Val2 =\= 0 -> Res is Val1/Val2
   ;Res = "Nao ha divisao por 0").

sem_parametro:-
    write("Nao precisa de parametros para funcionar").
