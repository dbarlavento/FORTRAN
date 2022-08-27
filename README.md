# FORTRAN
Aprendendo a programar em FORTRAN

## Preparando o ambiente: 
Para instalas o GFortran no OpenBSD.
	$doas pkg_add g95
 
 Eu instalei a versão mais nova disponível (26/08/2022): 11.2.0.
	$egfortran -v

## Compilando seus programas
GFortran utiliza a mesma sintaxe do GCC. Para compilar, exceto casos específicos, usarei:
	'''$egfortran arq.f90 -o arq.out'''
