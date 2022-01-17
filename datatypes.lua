require("utils")

section("DataTypes")
local texto = type("Hello World")
local numero = type(10)
local booleano = type(false)
local booleano2 = type(true)
local tabela = type({}) -- arrays, objetos, listas, sets
local userdata = type(io.stdin)
local funcao = type(write)

write(texto)
write(numero)
write(booleano)
write(booleano2)
write(tabela)
write(userdata)
write(funcao)

section("datatype math type")
local inteiro = math.type(1)
local decimais = math.type(1.0)

write(inteiro)
write(decimais)
