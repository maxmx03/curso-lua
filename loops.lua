require("utils")

-- variavel global
COUNT = 1

section("for numeric")
for x = 1, 10, 1 do
  write(x)
end

section("for generic lists/arrays")
local numeros = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

for indice, numero in ipairs(numeros) do
  write(string.format("Índice: %d / Número: %d", indice, numero))
end

section("for generic objects")
local pessoa = {nome = "Max", idade = 20}

for chave, valor in pairs(pessoa) do
  write(string.format("Chave: %s / Valor: %s", chave, valor))
end

section("while as loop")
COUNT = 1

while COUNT < 10 do
  write(COUNT)
  COUNT = COUNT + 1
end

section("while as interator")
local numeros = {1, 2, 3, 5, 6, 7, 8, 9, 10}
local interator = 1

while interator <= #numeros do
  local numero = numeros[interator]
  interator = interator + 1

  write(numero)
end

section("while with not")
COUNT = 1

while not (COUNT > 10) do
  write(COUNT)
  COUNT = COUNT + 1
end

section("repeat")
COUNT = 1

repeat
  write(COUNT)
  COUNT = COUNT + 1
until COUNT > 10
