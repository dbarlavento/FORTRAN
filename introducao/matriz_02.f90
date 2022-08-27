! Matrizes.

program matrizes
	implicit none

	! nosso índice
	integer :: i

	! declara uma matriz na própria váriavel
	integer :: mtz2(10)

	! umas matrizes bidimencionais
	real, dimension(10, 10) :: mtz3
	real :: mtz4(10,10)

	! podemos declara uma matriz por meio de indices personalizados
	real :: mtz5(0:9)
	real :: mtz6(-5:5)

	! atribuição de valores a uma matriz, fácil assim.
	mtz1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	! tambem permite usar um loop implicito
	mtz2 = [(i, i = 1, 10)]

	! para inicializar com zeros
	mtz3(:,:) = 0

	! os cinco primeiros da coluna 1 com 1
	mtz4(1:5,1) = 1

	! e os restantes com 2
	mtz4(6:, 1) = 2

	! imprimindo ...
	! os impares
	print *, mtz1(1:10:2)

	! de trás para frente
	print *, mtz2(10:1:-1)

	! a coluna 1
	print *, mtz4(:,1)

end program matrizes
