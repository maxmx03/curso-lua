require "utils"

section"metatables e metamethods"
section "__index"
local console = {}

local prototype = {
  msg = "Hello World",
  log = function(...)
    io.write(...)
    io.write('\n')
  end
}

local metatable = {__index = prototype}
setmetatable(console, metatable)

console.log(console.msg)
getmetatable(console).__index.log("Hello World")

section"__add"
Tabela = {}
local metatable = {}

function Tabela.new(lista)
  setmetatable(lista, metatable)
  return lista
end

metatable.__add = function (...) 
  local lista = {}
  local tables = {...}

  for _, tabela in ipairs(tables) do
    for _, valor in ipairs(tabela) do
      table.insert(lista, valor)
    end
  end

  return lista
end

local frutas = Tabela.new{"banana", "maça", "uva"}
local porcarias = Tabela.new{"coca-cola", "salgadinho", "bala"}
local legumes = Tabela.new{"tomate", "procolis"}
local comida = frutas + porcarias + legumes

for _, value in ipairs(comida) do
  write(value)
end

