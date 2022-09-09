! Usando variáveis, constantes e expressões aritméticas
! Converte de Fahrenheit para Celsius

program ex_02

	implicit none

	real, parameter :: f = 0.0
	real :: c

	c = 5 * (f - 32) / 9

	print *, f, "->", c

end program ex_02
