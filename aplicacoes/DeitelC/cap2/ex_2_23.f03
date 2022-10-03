! Dentre Cinco Inteiro determina qual é o maior.
! Versão em FORTRAM do exercício 2.23 do livro:
! "C como programar" 6ª edição

! Algoritmo (descrição ruim!)
! Imprima a solicitação para digitação dos cinco inteiros.
! Leia os cinco inteiros solicitados.
! Guarde os inteiro em uma matriz V.
! Verifique se os valores inseridos são números inteiros.
! Se não,
!	Imprima uma mensagem de erro.
!	Termine o programa.
! Se sim, continue ...
! *** Ordenação por seleção ***
! Para i = 1, a n,
!  Para j = 1 a n - i,
!   Se V[j] > V[j+1],
!	  Troque V[j] por V[j+1].
! Imprima o menor inteiro: V[1].
! Imprima o maior inteiro: V[5].

program ex_2_23
	implicit none
	
	integer, parameter :: tam = 5
	integer, dimension(tam) :: sort
	integer :: i, j, buf
	integer :: io_stat

	print *, 'Digite 5 inteiros:'
	read (*,*,iostat=io_stat) sort(1), sort(2), sort(3), sort(4), sort(5)

	if(io_stat /= 0) then
		print *, 'O valor digitado não é um inteiro'
		stop 1
	end if

	do i = 1, tam
		do j = 1, tam - i
			if (sort(j) > sort(j+1)) then
				buf = sort(j+1)
				sort(j+1) = sort(j)
				sort(j) = buf
			end if
		end do
	end do

	print *, 'O menor inteiro: ', sort(1)

	print *, 'O maior inteiro: ', sort(5)
end program ex_2_23
