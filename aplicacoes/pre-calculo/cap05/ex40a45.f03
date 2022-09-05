! Calcula os valores de f(x) = [-10, 10] para os exercícios 40 a 45:
! ex40: x² - x - 20
! ex41: 2x² + 5x - 3
! ex42: 4x² - 8x + 3
! ex43: x² - 8x + 15
! ex44: x(3x - 7) - 6
! ex45: x(3x + 11) - 20
!
! Para selecionar a saida digite o número do exercício no prompt.

program eqsegundograu
	implicit none

	integer :: seletor

	!print *, "Digite o número do exercício (40 a 45)"
	read (*,*) seletor

	select case (seletor)
		case (40)
			call ex40
		case (41)
			call ex41
		case (42)
			call ex42
		case (43)
			call ex43
		case (44)
			call ex44
		case (45)
			call ex45
		case default
			print *, "Erro! Número incorreto."
	end select

end program eqsegundograu

! Subrotinas de cada equação
subroutine ex40
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, 2*(vx**2)-vx-20
	end do
end subroutine ex40

subroutine ex41
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, 2*(vx**2)+5*vx-3 
	end do
end subroutine ex41

subroutine ex42
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, 4*(vx**2)-8*vx+3 
	end do
end subroutine ex42

subroutine ex43
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, vx**2-8*vx+15
	end do
end subroutine ex43

subroutine ex44
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, vx*(3*vx-7)-6
	end do
end subroutine ex44

subroutine ex45
	integer :: vx
	do vx = -10, 10
		write (*,'(3x, i3, 4x, i4)') vx, vx*(3*vx+11)-20
	end do
end subroutine ex45
