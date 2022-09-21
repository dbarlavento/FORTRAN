! Compara dois números inteiros definidos pelo usuário.
! Versão em FORTRAN do execício 2.18 do livro:
! "C como programar" 6ª edição

! Algoritmo:
! Imprima a solicitação do primeiro inteiro.
! Leia o valor digitado pelo usuário.
! Verifique se o valor digitado é um número inteiro.
! Se não for: 
!	Imprima uma mensagem de erro. 
!	Termine o programa.
! Se for número inteiro, prossiga ...
! Imprima a solicitação do segundo número inteiro.
! Leia o valor digitado pelo usuário.
! Verifique se o valor digitado é um número inteiro.
! Se não for:
!	Imprima uma mensagem de erro.
!	Termine o programa.
! Se for número inteiro, prossiga ...
! Verifique:
! Se primeiro > segundo,
!	imprima: "primeiro é maior".
! Se não, verifique se segundo > primeiro,
! 	imprima: "segundo é maior".
! Se não,
!	imprima "Esses números são iguais".

program ex_2_18
	implicit none

	!Guarda os valores inseridos pelo usuário
	integer:: a, b

	!Sinal de verificação de erro nas entradas
	integer :: io_stat

	!Boas vindas
	print *, 'Comparador de dois inteiros.'

	!Pocessa o primeiro inteiro
	print *, 'Digite o primeiro número inteiro:'
	read (*,*,iostat=io_stat) a

	!Verifica se o que foi inserido é um número inteiro
	if (io_stat /= 0) then
		print *, 'Ovalor digitado não é um número inteiro.'
		stop 1 !termina o programa e retorna 1 para o shell
	end if

	!Pocessa o segundo inteiro
	print *, 'Digite o segundo número inteiro:'
	read (*,*,iostat=io_stat) b

	!Verifica se o que foi inserido é um número inteiro
	if (io_stat /= 0) then
		print *, 'Ovalor digitado não é um número inteiro.'
		stop 1 !termina o programa e retorna 1 para o shell
	end if

	if (a > b) then
		print *, a, 'é maior'
	else if (b > a) then
		print *, b, 'é maior'
	else
		print *, 'Esses números são iguais'
	end if

end program ex_2_18
