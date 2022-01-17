require("utils")

section("bloco/escopo global")
local numero = 10

write(numero)

do
  section("bloco/escopo 1")

  -- local numero = 5
  NUMERO = 5

  write(NUMERO)
  write(numero)
end

do
  section("bloco/escopo 2")

  write(NUMERO)
  write(numero)
end

do
  section("bloco/escopo 3")

  write(NUMERO)
  write(numero)
end

