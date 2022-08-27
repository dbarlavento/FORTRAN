# FORTRAN
Aprendendo a programar em FORTRAN

## Preparando o ambiente 

Para instalas o GFortran no OpenBSD.
	
	$doas pkg_add g95
 
Eu instalei a versão mais nova disponível (26/08/2022): 11.2.0.
	
	$egfortran -v

*ATENÇÃO* no Openbsd 7.0 e 7.1 pode haver um conflito entre as bibliotecas
de versões anteriores do gcc, mais especificamente da versão 8.xx.
Isso faz com que alguns programas não compilem por erro na ligação das
bibliotecas necessárias.
Para resolver é necessário remover o pacote g95, e as bibliotecas 
relacionadas a versões antigas, no meu caso: gcc-libs-8.4.0p11:
	pkg_delete gcc-libs-8.4.0p11

## Compilando seus programas

GFortran utiliza a mesma sintaxe do GCC. Para compilar, exceto casos específicos, usarei:
	
	$egfortran arq.f90 -o arq.out
