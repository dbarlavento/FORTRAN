! Matemática básica e seus operadores:
! cálculo do volume de um cilindro e a área de sua base.

program matbasica
	implicit none

	real :: pi
	real :: raio
	real :: altura
	real :: area
	real :: volume

	pi = 3.1415927

	print *, 'Digite o raio da base do cilindro: '
	read(*,*) raio

	print *, 'Digite a altura do cilindro: '
	read(*,*) altura

	area = pi * raio**2.0
	volume = area * altura

	print *, 'Raio do cilindro: ', raio
	print *, 'Altura do cilindro: ', altura
	print *, 'Area da base do cilindro: ', area
	print *, 'Volume do cilindro: ', volume

end program matbasica
