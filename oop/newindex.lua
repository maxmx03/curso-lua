require "utils"

local mt = {}
local frutas = {"maçã", "banana", "sorvete"}

mt.__newindex = function ()
  error("A tabela é imutavel")
end

setmetatable(frutas, mt)

frutas[4] = "abacate"

for index, fruta in ipairs(frutas) do
  write(fruta)
end
