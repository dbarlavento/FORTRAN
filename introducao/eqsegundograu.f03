! Calcula os valores de f(x) = [-10, 10] para:
! 40: x² - x - 20
! 41: 2x² + 5x - 3
! 42: 4x² - 8x + 3
! 43: x² - 8x + 15
! 44: x(3x - 7) - 6
! 45: x(3x + 11) - 20

program eqsegundograu
	implicit none

	integer :: x

	print *, 'f(x)=x²-x-20'
	print 100
	do x = -10, 10
		print 200, x, x**2 - x - 20
	end do

	print *, 'f(x)=2x²+5x-3'
	print 100
	do x = -10, 10
		print 200, x, 2 * (x**2) - x - 20
	end do
	
	! Assim dá pra reaproveitar a foratação para diversas equações	
	100 format (5x, 'x', 5x, 'f(x)')
	200 format (3x, i3, 4x, i4)
end program eqsegundograu
