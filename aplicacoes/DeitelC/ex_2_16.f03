! Imprime os resultados das operações matemáticas básicas entre dois
! números digitados pelo usuário.
! Versão em FORTRAN do exercício 2.16 do livro:
! "C como programar" 6ª edição

! Algoritmo
! Imprima a solicitação do promeiro número.
! Leia o primeiro número (a).
! Verifique se o que foi digitado é um número
! 	se não, imprime uma mensagem de erro.
! Imprima a solicitação do sugundo número.
! Leia o segundo número (b).
! Verifique se o que foi digitado é um número
!  se não, imprima uma menssagem de erro.
! Imprima o resultado da soma: a+b
! Imprima o resultado da subtração: a-b e b-a
! Imprima o resultado da multiplicação a.b
! Verifique se segundo número é zero, se sim imprima um erro, se não 
! imprima o quociente de a/b
! Verifieque se o primeiro número é zero, se sim, imprima um erro, se não
! imprima quociente de b/a

program ex_2_16
	implicit none

	real :: a, b
	! Sinal de verificação de erro nas entradas
	integer :: io_stat

	! Boas vindas
	print *, '*** Aritmética básica ***'

	! Processa o primeiro número (a)
	print *, 'Digite um número real:'
	read (*,*,iostat=io_stat) a
	
	! Verifica se houve algum erro durante o processo de E/S
	if(io_stat /= 0) then
		print *, 'O valor digitado não é um número real'
		stop 1	! Termina o programa e rotarna 1 para o shell
	end if

	! Processa o segundo número (b)
	print *, 'Digite o segundo número real:'
	read (*,*,iostat=io_stat) b
	
	! Verifica se houve algum erro durante o processo de E/S
	if(io_stat /= 0) then
		print *, 'O valor digitado não é um número real'
		stop 1	! Termina o programa e retorna 1 para o shell
	end if

	print *, '' 
	print *, 'Resultados'
	print *, 'a + b = ', a+b
	print *, 'a - b = ', a-b
	print *, 'b - a = ', b-a
	print *, 'a . b = ', a*b
	
	! Evita divisões por 0
	if (b /= 0) then
		print *, 'a : b = ', a/b
	else
		print *, 'Não existe a : b '
	end if
	
	if (a /= 0) then
		print *, 'b : a = ', b/a
	else
		print *, 'Não existe b : a'
	end if

end program ex_2_16
