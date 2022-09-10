! Matrizes de matrizes (string) em um exemplo nada didático.
! Este exemplo contém um monte de coisas não vistas previamente.

program matriz_string
	implicit none

	!Mais uma forma de declarar uma matriz
	character(len=10), dimension(2) :: chave, valor

	!Mais uma forma de inicializar arrays
	chave = [character(len=10) :: "usuario", "nomedb"]
	valor = [character(len=10) :: "joao", "motivação"]

	!Uma chamada para subrotina
	call show(chave, valor)
	
	!Não sei o que é mas está aqui para tudo dar certo
	contains

	!Declaração da subrotina chamada acima
	!Imprime duas matrizes relacionadas
	subroutine show(achave, avalor)
		character(len=*), intent(in) :: achave(:), avalor(:)
		integer :: i

		do i = 1, size(achave)
			print *, trim(achave(i)), ": ", trim(avalor(i))
		end do

	end subroutine show

end program matriz_string
