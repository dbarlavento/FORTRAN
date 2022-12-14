# FORTRAN
Aprendendo a programar em FORTRAN no OpenBSD 7.1

## Preparando o ambiente 

Utilizarei o compilador GNU GFortran. Para instalas o GFortran no OpenBSD:
	
	$doas pkg_add g95
 
Eu instalei a versão mais nova disponível (26/08/2022): 11.2.0.
	
	$egfortran -v

*ATENÇÃO:* no Openbsd 7.0 e 7.1 pode haver um conflito entre as bibliotecas
de versões anteriores do gcc, mais especificamente da versão 8.xx.
Isso faz com que alguns programas não compilem por erro na ligação das
bibliotecas necessárias.
Para resolver este problema é necessário remover o pacote g95:

	$doas pkg_delete g95

E as bibliotecas relacionadas a versões antigas, no meu caso: gcc-libs-8.4.0p11:
	
	$doas pkg_delete gcc-libs-8.4.0p11

## Compilando seus programas

GFortran utiliza a mesma sintaxe do GCC. Para compilar, exceto casos específicos, usarei:
	
	$egfortran arq.f90 -o arq.out
	$egfortran arq.f95 -o arq.out
	$egfortran arq.f03 -o arq.out

## Diretórios

1. aplicações: contém programas que resolvem meus problemas.
2. estudos: contém programas exemplo e exercícios realizados durante 
o aprendizado de Fortran.
3. etc: contém programas de teste, arquivos utilizados como entrada e saída
, etc.
