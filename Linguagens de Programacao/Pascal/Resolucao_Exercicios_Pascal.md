# Solução dos Exercícios  
# 1 - Produto entre 28 e 43:  

program ProdutoNumeros;  
begin  
    WriteLn('O produto de 28 por 43 é: ', 28 * 43);  
    ReadLn;  
end.  

# 2 - Média Aritmética de Três Números:  

program MediaAritmetica;  
var n1, n2, n3: Integer;  
begin  
    Write('Digite o primeiro número: ');  
    ReadLn(n1);  
    Write('Digite o segundo número: ');  
    ReadLn(n2);  
    Write('Digite o terceiro número: ');  
    ReadLn(n3);  
    WriteLn('A média é: ', (n1 + n2 + n3) / 3:0:2);  
    ReadLn;  
end.  

# 3 - Sucessor e Antecessor de um Número:

program SucessorAntecessor;  
var numero: Integer;  
begin  
  Write('Digite um número inteiro: ');  
  ReadLn(numero);  
  WriteLn('O antecessor de ', numero, ' é ', numero - 1, ' e o sucessor é ', numero + 1);  
  ReadLn;  
end.  

# 4 - Soma de Dois Números:

program SomaNumeros;  
var n1, n2: Integer;  
begin  
  Write('Digite o primeiro número: ');  
  ReadLn(n1);  
  Write('Digite o segundo número: ');  
  ReadLn(n2);  
  WriteLn('SOMA=', n1 + n2);  
  ReadLn;  
end.  

# 5 - Terça Parte de um Número:

program TercaParte;  
var numero: Real;  
begin  
  Write('Digite um número: ');  
  ReadLn(numero);  
  WriteLn('A terça parte de ', numero:0:2, ' é ', numero / 3:0:2);  
  ReadLn;  
end.  

# 6 - Quociente e Resto de Dois Números:

program QuocienteResto;  
var n1, n2: Integer;  
begin  
  Write('Digite o dividendo: ');  
  ReadLn(n1);  
  Write('Digite o divisor: ');  
  ReadLn(n2);  
  WriteLn('Quociente: ', n1 div n2);  
  WriteLn('Resto: ', n1 mod n2);  
  ReadLn;  
end.  

# 7 - Média Ponderada de Quatro Números:

program MediaPonderada;
var n1, n2, n3, n4: Real;
begin
  Write('Digite o primeiro número: ');
  ReadLn(n1);
  Write('Digite o segundo número: ');
  ReadLn(n2);
  Write('Digite o terceiro número: ');
  ReadLn(n3);
  Write('Digite o quarto número: ');
  ReadLn(n4);
  WriteLn('A média ponderada é: ', (n1*1 + n2*2 + n3*3 + n4*4) / 10:0:2);
  ReadLn;
end.
