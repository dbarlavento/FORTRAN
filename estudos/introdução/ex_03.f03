! Instruções de controle if - then - else

program ex_03
	implicit none

	real :: f, c

	print *, "Digite o valor da temperatura em F°"
	read(*,*) f

	c = (f - 32.0) * 5.0 / 9.0
	
	print *, "São ", c, "C°"
	if (c <= 0) then
		print *,'Brezzzz!, Que frio!'
	else if (c > 0 .and. c <= 25) then
		print *, 'Que agradável!'
	else 
		print *, 'Que calor!'
	end if
end program ex_03
