! Calcula a soma, a média, o produto, o maior e o menor de três inteiros
! fornecidos pelo usuário.
! Versão em FORTRAN do exercício 2.19 do livro:
! "C como programar" 6ª edição.

! Algoritmo:
! Imprima a solocitação para obter os três inteiros.
! Repita três vezes:
! 	Leia um número inteiro.
! 	Verifique se o numero digitado é um inteiro.
! 	Se não for: 
!		Imprima uma mensagem de erro.
!		Termine o programa.
! 	Se for número inteiro, prossiga ...
! Calcule a soma dos inteiros lidos.
! Imprima o resultado da soma:
!	"A soma é"
! Calcule a média dos inteiros lidos.
! Imprima o resultado da média:
!	"A média é"
! Calcule o produto dos inteiros lidos.
!	"O produto é"
! Verifique o menor dos três inteiros
! Imprima o menor dos três inteiros
!	"O menor é"
! Verifique o maior dos três inteiros
! Imprima o maior dos três inteiros
!	"O maior é"

program ex_2_19
	implicit none

	integer :: i, soma
	integer, dimension(3) :: nums 
	
	integer :: io_stat

	print *, "Digite três inteiros diferentes:"

	do i = 1, 3
		read (*,*, iostat=io_stat) nums(i)

		if (io_stat /= 0) then
			print *, "O valor digitado não é um inteiro."
			stop 1
		end if
	end do

	soma = nums(1) + nums(2) + nums(3)

	print *, "A soma é ", soma
	print *, "A média é ", soma / 3
	print *, "O produto é ", nums(1)*nums(2)*nums(3)

	if (nums(1) < nums(2) .and. nums(1) < nums(3)) then
		print *, "O menor é ", nums(1)
	else if (nums(2) < nums(1) .and. nums(2) < nums(3)) then
		print *, "O menor é ", nums(2)
	else 
		print *, "O memor é ", nums(3)
	end if
	
	if (nums(1) > nums(2) .and. nums(1) > nums(3)) then
		print *, "O maior é ", nums(1)
	else if (nums(2) > nums(1) .and. nums(2) > nums(3)) then
		print *, "O maior é ", nums(2)
	else 
		print *, "O maior é ", nums(3)
	end if

end program ex_2_19
