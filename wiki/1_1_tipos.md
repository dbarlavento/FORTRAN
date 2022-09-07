# Descrição e exemplos dos tipos de dados intrinsecos a Fortran.

## Integer
Representa números inteiros.

São escritas da mesma forma que números inteiros comuns.
Uma constante integer é uma string contendo apenas números de 0 a 9.
Uma constante integer pode ser seguida por um caracter '_' e um nome
para designar o parâmetro KIND.

```
	23 
	0 
	123456789 
	-10 
	42_long 
	42_short
```
## Real
Representa os números reais.

Fortran permite duas formas de representar constantes reais:

1. Positional Form (forma posicional): igual a representação decimal
	mais comum onde o ponto '.' define o valor de cada algarismo.
	assim como o tipo integer é permitido o uso de '_' seguido de um
	nome para representar um tipo para o parâmetro KIND. 	
```		
	13.5 0.12345 
	123.45678 
	00.30_double 
	0.123456_quad
```

2.	Exponetial form (forma exponencial): a famosa notação cientifica.
	Consiste de um número real seguido pela letra 'e' e um inteiro
	com ou sem sinal que representa a posição real do ponto decimal.
	Também pode ser usado a notação para o parâmtro KIND. 		
```		
	23.4e5 para 2340000
	1.0e-9 para 0,000000001
	1.0e-3_double
```

## Complex
Representa números complexos.

São representados por um par ordenado de números na forma (x, y), onde
x e y são do tipo real conforme definição anteiro. 	
```		
	(1.0, -1.0)
	(-1.0, 3.1e-27) 
	(3.14_double, -7.0_double)
```

## Logical
Representa os valores lógicos VERDADEIRO e FALSO. 

Fortran possui duas constantes para representa-los:
```	
	.true.    verdadeiro
	.false.   falso
```

Tipos de dados logical podem ser alterados por parâmetros KIND 
quando precedidos por '_'.

## Character
Representa conjuntos de caracteres.

Uma constante character é formada por uma sequência de qualquer caractere
válido no sistema computacional alvo delimitados por aspas duplas.
```
	"uma string!"
	"aeiou 12345"
```

Para representar as próprias aspas duplas, são utilizadas duas aspas duplas 
seguidas, sem outro caractere entre elas.
```
	"E ele disse: ""Ser ou não ser"""
```

O tipo caractere pode ser alterado pelo operador KIND, neste caso
o novo tipo deve ser definido antes da constante character.
```
	iso_10646_"lá lá lá"
```