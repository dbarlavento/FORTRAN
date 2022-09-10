! Agora veremos umas variáveis

program variaveis
	implicit none !Diz que a variáveis não são implicitas. Sempre use isto.

	!Declarações de variáveis em todos os tipos suportados
	integer :: z
	real :: pi
	complex :: i
	character :: c
	logical :: bool

	!Atribuições
	z = -10
	pi = 3.1415927
	i = (1.0, -0.5)
	c = 'A'
	bool = .false.

	!Imprimindo nossas variáveis
	print *, 'Um número inteiro (integer): ', z
	print *, 'Um número real (real): ', pi
	print *, 'Um número complexo (complex): ', i
	print *, 'Um caractere (character): ', c
	print *, 'Um valor lógico (logical): ', bool

end program variaveis
