# Plota os arquivos de saída dos exercícios

#ex.40
arq="ex40.dat"
set grid
set xzeroaxis lt 2 lw 1
set yzeroaxis lt 2 lw 1
plot arq using 1:2 with linespoints 
