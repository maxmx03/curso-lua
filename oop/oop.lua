require"utils"

section"Introdução para OOP"
--[[
Pessoa = {
  nome = "",
  sobrenome = "",
  setNome = function (nome)
    Pessoa.nome = nome
  end,
  setSobrenome = function (sobrenome)
    Pessoa.sobrenome = sobrenome
  end
}

function Pessoa.new(object)
  object = object or {}
  
  local mt = {__index = Pessoa}
  setmetatable(object, mt)

  return object
end

local max = Pessoa.new()
max.setNome("Max")
max.setSobrenome("Miliano")

local fernanda = Pessoa.new()
fernanda.nome = "Fernanda"
fernanda.sobrenome = "Miliano"

write(string.format("Nome: %s", max.nome))
write(string.format("Sobrenome: %s", max.sobrenome))
]]
section"OOP (self)"
local Pessoa = {}

Pessoa.nome = ""
Pessoa.sobrenome = ""

function Pessoa:new(object)
  object = object or {}
  
  self.__index = self
  setmetatable(object, self)

  return object
end

function Pessoa:setNome(nome)
  self.nome = nome
end

function Pessoa:setSobrenome(sobrenome)
  self.sobrenome = sobrenome
end

local max = Pessoa:new({})
max.setNome(max, "Max")
max.setSobrenome(max,"Miliano")

local fernanda = Pessoa:new({})
fernanda.nome = "Fernanda"
fernanda.sobrenome = "Miliano"

write(string.format("Nome: %s", max.nome))
write(string.format("Sobrenome: %s", max.sobrenome))


write(string.format("Nome: %s", fernanda.nome))
write(string.format("Sobrenome: %s", fernanda.sobrenome))
