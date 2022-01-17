require("utils")

section("tables: listas e arrays")
local fruits = {"maçã", "banana", "uva", "melância"}

write(fruits[1])
write(fruits[2])
write(fruits[3])
write(fruits[4])

section("tables: objetos")
local pessoa = {
  nome = "Max",
  idade = function(anoNascimento) return 2022 - anoNascimento end,
  weight = 60.8,
  ["cor-dos-olhos"] = "castanho"
}

write(pessoa.nome)
write(pessoa.idade(2000))
write(pessoa.weight)
write(pessoa["cor-dos-olhos"])

section("tables: array de objetos")
local pessoa1 = {
  nome = "Max",
  idade = function(anoNascimento) return 2022 - anoNascimento end,
  weight = 60.8,
  ["cor-dos-olhos"] = "castanho"
}
local pessoa2 = {
  nome = "Leticia",
  idade = function(anoNascimento) return 2022 - anoNascimento end,
  weight = 60.8,
  ["cor-dos-olhos"] = "azul"
}
local pessoas = {pessoa1, pessoa2}

write(pessoas[1].nome)
write(pessoas[2].nome)

section("table: funções")
local cores = table.pack("azul", "vermelho", "preto", "laranja")
local cores2 = table.pack(table.unpack(cores))

table.insert(cores, "amarelo")
table.remove(cores, #cores)

write(cores[1])
write(cores[2])
write(cores[3])
write(cores[#cores])
write(string.format("Length da tabela: %s", #cores))
section("cores2")
write(cores2[1])
write(cores2[2])
write(cores2[3])
write(cores2[#cores2])
write(string.format("Length da tabela: %s", #cores2))
