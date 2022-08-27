! Matriz de caracteres ou String

program string
	implicit none

	!declaração de duas matrizes de caracteres
	character (len = 4) :: nome
	character (len = 5) :: sobrenome

	character (10) :: nomeCompleto

	nome = 'José'
	sobrenome = 'Silva'

	!concatenação de strings
	nomeCompleto = nome//' '//sobrenome

	print *, nomeCompleto
end program string
