! Imprime uma tabela de valores convertido de Fahrenheit para Celsius.
! Exemplo de uso do loop condicional do-while.

program ex_04
	implicit none

	real, parameter :: fmin = 0.0, fmax = 300.0, passo = 20.0
	real :: f, c

	f = fmin

	do while (f <= fmax)
		c = (f - 32) * 5 / 9
		print *, f, c
		f = f + passo
	end do

end program ex_04
