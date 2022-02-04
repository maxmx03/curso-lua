require "utils"

section "pcall"
local function divisao(dividendo, divisor)
  if divisor == 0 then
    error "Divisor não pode ser igual a zero"
  end

  return dividendo / divisor
end

io.write("Digite o dividendo: ")
local dividendo = assert(io.read("n"), "Valor inválido na linha 21")

io.write("Digite o divisor: ")
local divisor = assert(io.read("n"), "Valor inválido na linha 22")

local status, resultado = pcall(divisao, dividendo, divisor)

if not status then
  local err = resultado

  write(string.format("Mensagem de error: %s", err))
else
  write(string.format("Resultado da divisão: %s", resultado))
end
