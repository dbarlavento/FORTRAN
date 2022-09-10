! 	Controle de fluxo e loops
! 	Programa 2 versão 3 do livro de K&R 2Ed.
!	Imprime uma tabela de conversão de Fahrenheit para Celsius

program controle
	implicit none

	integer :: inf, sup, passo
	real :: fahr, celsius

	inf = 0
	sup = 300
	passo = 20

	fahr = inf

	do while (fahr <= sup)
		celsius = (fahr-32)*5/9
		print *, celsius, fahr
		fahr = fahr + passo
	end do
end program controle
