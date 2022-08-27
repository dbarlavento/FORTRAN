# FORTRAN
Aprendendo a programar em FORTRAN

	Preparando o ambiente: 
	Instalção do GFortran no OpenBSD.
	#pkg_add g95
 
 	Eu instalei a versão mais nova disponível: 11.2.0.
	$egfortran -v
  
	GFortran utiliza a mesma sintaxe do gcc.
	Para compilar, exceto casos específicos, usarei:
	$egfortran arq.f90 -o arq.out
