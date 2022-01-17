local calculadora = require("calculadora")

local soma = calculadora.soma(5, 2)
local subtracao = calculadora.subtracao(5, 2)

io.write(string.format("Soma: %d", soma), "\n")
io.write(string.format("Subtracao: %d", subtracao), "\n")
