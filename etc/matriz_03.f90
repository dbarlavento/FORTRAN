! Matrizes alocadas dinamicamente

program matriz
	implicit none

	integer, allocatable :: mtz1(:)
	integer, allocatable :: mtz2(:,:)

	integer :: i
	integer :: j = 10

	!allocate(mtz1(j))
	allocate(mtz2(j,2))

	mtz1 =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	mtz2(:,1) = [(i, i = 1, 10)]
	mtz2(:,2) = 2

	print *, 'Quadrados de 1 a 10: ', mtz1 * mtz2(:,1)
	print *, 'Dobros de 1 a 10: ', mtz2(:,1) * mtz2(:,2)

	deallocate (mtz1)
	deallocate (mtz2)
end program matriz
