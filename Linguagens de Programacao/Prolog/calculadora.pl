calculadora :-
    write("Digite a operacao :(soma,sub,div,mult)"),nl,
    read(Operacao),
    write("Digite o primeiro valor: "),nl,
    read(Valor1),
    write("Digite o segundo valor: "),
    read(Valor2),
    operacao(Operacao,Valor1,Valor2,Resultado),
    write("O resultado da operacao foi: "),
    write(Resultado).

   operacao(soma,Valor1,Valor2,Res) :- Res is Valor1+Valor2.
   operacao(sub,Valor1,Valor2,Res) :- Res is Valor1-Valor2.
   operacao(div,Valor1,Valor2,Res) :-
      (   Valor2 =\= 0 -> Res is Valor1/Valor2
      ;Res = "Nao ha divisao por 0").
   operacao(mult,Valor1,Valor2,Res) :- Res is Valor1*Valor2.
