! Calcula os valores de f(x) = [-10, 10] para:
! ex40: x² - x - 20
! ex41: 2x² + 5x - 3
! ex42: 4x² - 8x + 3
! ex43: x² - 8x + 15
! ex44: x(3x - 7) - 6
! ex45: x(3x + 11) - 20

program eqsegundograu
	implicit none

	integer :: x

	!print *, 'f(x)=x²-x-20'
	do x = -10, 10
		call ex42(x)
	end do

	!print *, 'f(x)=2x²+5x-3'
	do x = -10, 10
		call ex43(x)
	end do
	
end program eqsegundograu

! Subrotinas de cada equação
subroutine ex40(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, 2*(vx**2)-vx-20
end subroutine ex40

subroutine ex41(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, 2*(vx**2)+5*vx-3 
end subroutine ex41

subroutine ex42(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, 4*(vx**2)-8*vx+3 
end subroutine ex42

subroutine ex43(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, vx**2-8*vx+15
end subroutine ex43

subroutine ex44(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, vx*(3*vx-7)-6
end subroutine ex44

subroutine ex45(vx)
	integer :: vx
	write (*,'(3x, i3, 4x, i4)') vx, vx*(3*vx+11)-20
end subroutine ex45
