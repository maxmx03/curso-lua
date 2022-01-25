require"utils"

section "error function"
io.write "Digite um valor: "
local numero = io.read("n")

if not numero then
  error "Você não digitou um número"
end

section "assert function"
io.write "Digite um valor: "
local numero = assert(io.read("n"), "Você não digitou um número")

write(numero)

section "pcall"
io.write("Digite o dividendo: ")
local dividendo = assert(io.read("n"), "Valor inválido na linha 21")

io.write("Digite o divisor: ")
local divisor = assert(io.read("n"), "Valor inválido na linha 22")

local status, err = pcall(function ()
  local messages = {message = "Não pode dividir um número por 0"}

  if divisor == 0 then
    error(messages)
  else
    local calculo = dividendo / divisor
    
    write(calculo)
  end
end)

if not status then
  write(err.message)
end

section "error level"
local function hello(text) 
  if type(text) ~= "string" then
    error("A função hello precisa de um string como parametro", 2)
  else
    io.write(text)
  end
end

hello({name = "Max"})