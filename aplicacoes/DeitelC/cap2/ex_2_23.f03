! Dentre Cinco Inteiro determina qual é o maior.
! Versão em FORTRAM do exercício 2.23 do livro:
! "C como programar" 6ª edição

! Algoritmo (descrição ruim!)
! Imprima a solicitação para digitação dos cinco inteiros.
! Leia os cinco inteiros solicitados.
! Guarde os inteiro em uma matriz.
! Verifique se os valores inseridos são números inteiros.
! Se não,
!	Imprima uma mensagem de erro.
!	Termine o programa.
! Se sim, continue ...
! Selecione o número na primeira posição da matriz, 's' = [1] .
! Compare o número selecionado com o segundo número da matriz [2].
! Se 's' < [2], selecione [2], 's' = [2].
! Se não, não altere 's'.
! Compare o número selecionado 's' com o terceiro número da matriz [3].
! Se 's' < [3], selecione [3], 's' = [3].
! Se não, não altere 's'.
! Compare o número selecionado 's' com o quarto número da matriz, [4].
! Se 's' < [4], selecione [4], 's' = [4].
! Se não, não altere 's'.
! Compare o número seleconado 's' com o quinto número da matriz, [5].
! Se 's' < [5], selecione [5], 's' = [5].
! Se não, não altere 's'.

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
