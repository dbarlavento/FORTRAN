!	Valida se os valores de entrada formam um triangulo

program validatriangulo
	implicit none

	integer la, lb, lc
	logical p

	print *, "Digite o valor para o lado A: "
	read *, la
	print *, "Digite o valor para o lado B: "
	read *, lb
	print *, "Digite o valor para o lado C: "
	read *, lc

	p = (la < (lb+lc)) .and. (lb < (la+lc)) .and. (lc < (la+lb))

	if (p) then
		print *, "Há triangulo."
	else
		print *, "Não há triangulo."
	end if

end program validatriangulo
