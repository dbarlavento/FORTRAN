! Dado o raio de um círculo, calcula o diametro, a circunferência
! e a área do círculo.
! Versão em FORTRAN do exercício 2.20 do livro:
! "C como programar" 6ª edição.

! Algoritmo
! Define o valor de PI como 3,14159
! Imprima a solicitação para obter o valor do raio.
! Leia o numero real digitado.
! Verifique se o valor digitado é um número real.
! Se não for,
!	Imprima uma mensagem de erro.
!	Termine o programa.
! Se for, continue
! Calcule o diâmetro.
! Imprima o valor do diâmetro.
! Calcule a circunferência.
! Imprima o valor da circunferência.
! Calcule a área do círculo.
! Imprima o valor da área.

program ex_2_20
	implicit none

	integer, parameter :: erro = 1
	integer :: io_stat

	real, parameter :: PI = 3.14159
	real :: raio

	print *, 'Digite o valor do raio de uma circunferência.'
	read (*,*, iostat=io_stat) raio

	if (io_stat /= 0) then
		print *, 'O valor digitado inválido.'
		stop erro
	end if

	print *, 'Diametro: ', raio * 2
	print *, 'Circunferência: ', 2 * PI * raio
	print *, 'Área: ', PI * raio ** 2

end program ex_2_20
