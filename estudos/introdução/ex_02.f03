! Usando variáveis, constantes e expressões aritméticas
! Converte o valor inserido de Fahrenheit para Celsius

program ex_02

	implicit none

	real, parameter :: const = 32.0
	real :: c, f

	print *, "Digite o valor em F°: "
	read(*,*) f

	c = (f - const) * 5.0 / 9.0

	print *, f, "->", c

end program ex_02
