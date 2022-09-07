# Operadores

## Operações com character
O operador // (concatenação) é o único que aplicado a oporandos do 
tipo character produz como resultado uma constante do tipo character.
```
	"string_01 "//"string_02", resulta: "string_01 string_02"
```

Operadores relacionais podem ser utilizados para compara valores 
do tipo character.

## Operadores aritiméticos 
O operadores aritméticos são utilizados em combinação com os tipos 
integer, real e complex para formar expressões matemáticas.

Os operadores aritméticos em Fortran são:
```		
	+	adição	menor precedência 
	- 	subtração
	* 	multiplicação
	/ 	divisão
	**	potenciação	maior precedência

	4² -> 4**2
	
	2 + 3 * 4 / 2 ** 2, equivale a: 2 + {3 * [4 / (2²)]}
```

Os operadores + e - podem ser utilizados como operadores unários
indicando a operação de identidade e negação, respectivamente.

A divisão inteira remove qualquer parte fracionária do resultado,
25 / 2, resulta 12 e não 12.5.

Para que o resultado seja um número real devem ser usados números reais
na divisão: 25.0 / 2, resulta 12.5.

Caso o dividendo ou divisor seja negativo o resultado será negativo.

## Operadores lógicos

Operadores lógicos combinam valores lógicos para formar sentensas 
que podem ser classificadas como VERDADEIRAS ou FALSAS (.true. ou .false.).

Os operadores lógicos em fortran são: .not., .and., .or., .eqv., .neqv..

O operador .not. é um operador unário.

Segue uma tabela com os valores da aplicação dos operadores lógicos:
```
    p    q    .not. p    p .and. q    p .or. q    p .eqv. q    p .neqv. q
	 V    V       F           V           V            V            F
	 V    F       F           F           V            F            V
	 F    V       V           F           V            F            V
	 F    F       V           F           F            V            F
```

## Operadores relacionais
Em fortran 2003 são:
```
			<		Menor que
			<= 	Menor ou igual a
			== 	Igual a
			/=		diferente de
			>=		Maior ou igual
			>		Maio que
```

O resultado de uma expressão relacional é um valor lógico:

Dados do tipo complex só podem ser comparados pelos operadores '==' e '/='.

A comparação de dados dos tipos real e complex utilizando '==' ou '/=' 
pode gerar erros por conta do arredondamento. Para este problema o ideal
é verificar o quanto um número é proximo do outro:
```
	Se |x - y| < 1.0e-5, então x = y
```

Em fortran:

	if (abs(x - y) < 1.0e-5) then
		print *, "x == y"
	else 
		print *, "x != y"
	end if

A função abs() retorna o módulo do valor passado como parâmetro.
