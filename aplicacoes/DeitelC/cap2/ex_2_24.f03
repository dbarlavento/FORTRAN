! Determina se um inteiro é par o impar.
! Versão em FORTRAN do exercício 2.24 do livro:
! "C como programar" 6ª edição.

! Algoritmo
! Imprima a solicitação para o inteiro a ser avaliado.
! Leia o valor digitado.
! Verifique se o valor digitado é um número inteiro.
! Se não,
!  Imprima uma menssagem de erro.
!  Termine o programa.
! Se sim, continue ...
! Calcule o mod 2 do número digitado.
! Se o resultado for 0,
!  imprima: PAR!
! Se o resultado for diferente de 0,
!  imprima: IMPAR!


program ex_2_24
	implicit none

	integer :: num
	integer :: io_stat

	print *, 'Verifica se um número é par ou impar.'
	print *, 'Digite um número inteiro.'
	read (*,*,iostat=io_stat) num

	if(io_stat /= 0) then
		print *, "o valor digitado não é um número inteiro"
		stop 1
	end if

	if(mod(num,2) /= 0) then
		print *, num, 'é impar'
	else
		print *, num, 'é par'
	end if
end program ex_2_24
