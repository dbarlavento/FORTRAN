! Imprime uma tabela com valores convertidos de Fahrenheit para Celsisu.
! Exemplo de utilização do loop do.

program ex_05
	implicit none
	
	! O loop do só aceita inteiros na sua cláusula de avaliação
	integer, parameter :: fmin=0, fmax=300, passo=20
	integer:: f, c

	do f = fmin, fmax, passo
		print *, f, (f - 32) * 5 / 9
	end do
end program ex_05
