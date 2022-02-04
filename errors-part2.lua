require "utils"

section "errors - error, assert, pcall"

local function divisao(dividendo, divisor)
  if (divisor == 0) then
    error "Divisor não pode ser igual a zero"
  end

  return dividendo // divisor
end

io.write("Digite o dividendo: ")
local dividendo = assert(io.read("n"), "Por favor digite um número na linha 13")

io.write("Digite o divisor: ")
local divisor = assert(io.read("n"), "Por favor digite um número na linha 14")

local success, resultado = pcall(divisao, dividendo, divisor)

if (not success) then
  local err = resultado

  write(string.format("Error: %s", err))
else
  write(string.format("Success: %s", resultado))
end

write("O programa chegou até aqui por causa do pcall")
