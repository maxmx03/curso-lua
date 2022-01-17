require("utils")

section("numbers")
local primeiroNumero = 1
local segundoNumero = 2
local terceiroNumero = 2e2
local quartoNumero = 2e-2

write(string.format("Primerio número: %d", primeiroNumero))
write(string.format("Segundo número: %d", segundoNumero))
write(string.format("Terceiro número: %.2f", terceiroNumero))
write(string.format("Quarto número: %s", quartoNumero))

section("operadores aritméticos")
local soma = 1 + 1
local subtracao = 2 - 1
local multiplicacao = 2 * 3
local divisao = 2 / 2
local potenciacao = 2 ^ 5
local divisaoRegra = 2 // 2

write(string.format("Soma: %d", soma))
write(string.format("Subtracao: %d", subtracao))
write(string.format("Multiplicação: %d", multiplicacao))
write(string.format("Divisao: %f", divisao))
write(string.format("Potenciacao: %f", potenciacao))
write(string.format("Divisao regra: %d", divisaoRegra))

section("objeto math")
local numeroExemplo = 3.3
local raizExemplo = 25

write("Floor: ", math.floor(numeroExemplo))
write("Floor negativo: ", math.floor(-numeroExemplo))
write("Ceil: ", math.ceil(numeroExemplo))
write("Ceil negativo: ", math.ceil(numeroExemplo))
write("Pow: ", math.pow(2, 5)) -- utilizado apenas no lua 5.2 e luajit
write("Sqrt: ", math.sqrt(raizExemplo))
write("Min: ", math.min(1, 2, 3, 4, 5, 6, 7))
write("Max: ", math.max(1, 2, 3, 4, 5, 6, 7))

math.randomseed(os.time())
write("Random: ", math.random(1, 10))

section("converter numero para string e vice-versa")
local numeroToString = tostring(10)
local numeroToNumber = tonumber("10")
local integerToFloat = 10 + 0.0
local floatToInteger = math.modf(3.2)

write(type(numeroToString))
write(type(numeroToNumber))
write(math.type(integerToFloat))
write(type(floatToInteger))


section("coerção")
write("1" + "1")
write("2" / "2")
write(2 / 2)
write("2" * 2)
write(2 ^ "5")
write("1" .. "1")
