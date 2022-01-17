require("utils")

section("void function")
local function show(msg)
  io.write(msg)
  io.write("\n")
end

show("Hello World")

section("void function")
local function write(...)
  io.write(...)
  io.write("\n")
end

write("Meu nome é: ", "Max")

section("number function")
local function soma(a, b)
  return a + b
end

local calculadora = function (operacao, numero1, numero2)
  return operacao(numero1, numero2)
end

write("Soma: ", calculadora(soma, 2, 5))
