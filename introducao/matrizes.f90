! Matrizes.

program matrizes
	implicit none

	!Declara uma matriz com o uso do atributo dimension.
	integer, dimension(10) :: mtz1

	!Declara uma matriz na própria váriavel
	integer :: mtz2(10)

	!Umas matrizes bidimencionais
	real, dimension(10, 10) :: mtz3
	real :: mtz4(10,10)

	!podemos declara uma matriz por meio de indices personalizados
	real :: mtz5(0:9)
	real :: mtz6(-5:5)



end program matrizes
