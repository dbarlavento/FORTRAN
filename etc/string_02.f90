! Matriz de caracteres ou String alocados dinamicamente 
! e sua concatenação

program string
	implicit none

	!declaração de duas matrizes de caracteres com alocação dinâmica
	character(:), allocatable :: nome
	character(:), allocatable :: sobrenome

	integer :: tam
	tam = 4

	!definição posterior de tamanho
	!QUANDO USAR ESTE RECURSO PRESTE ATENÇÃO SE O COMPILADOR ACESSA
	!AS BIBLIOTECAS CORRETAS
	allocate (character(tam) :: nome)
	nome = 'José'
	
	!alocação na atribuição
	sobrenome = 'Silva'

	print *, nome//' '//sobrenome
	print *, tam

end program string
