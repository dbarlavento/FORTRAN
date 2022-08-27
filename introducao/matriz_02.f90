! Soma e multiplicação de matrizes.

program matrizes
	implicit none

	! nosso índice
	integer :: i

	! declara uma matriz na própria váriavel
	integer :: mtz1(10)
	integer :: mtz2(10)
	integer :: dobro(10)
	integer :: quadrados(10)

	mtz1 = [(i, i = 1, 10)]
	mtz2 = mtz1  
	!mtz2 = mtz1(10:1:-1) 

	dobro = mtz1 + mtz2
	quadrados = mtz1 * mtz2

	print *, dobro(1:10)
	print *, quadrados(1:10)
end program matrizes
