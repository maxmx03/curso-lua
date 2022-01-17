require("utils")

section("relacionais")
write(string.format("1 maior que 2: %s", 1 > 2)) -- vai retonar booleano
write(string.format("1 menor que 2: %s", 1 < 2))
write(string.format("2 igual a 2: %s", 2 == 2))
write(string.format("10 igual e maior que 5: %s", 10 >= 5))
write(string.format("10 igual e menor que 5: %s", 10 <= 5))
write(string.format("10 não é igual a 5: %s", 10 ~= 5))
write(string.format("10 nãp é igual a 5: %s", not (10 == 5)))

section("condicionais if/elseif/else")

if 1 < 2 then -- true
  write("Verdadeiro", "um é menor que dois") -- se for true
else
  write("Falso")
end

if 10 < 5 and 10 == 10 then
  write("Verdadeiro ", "10 é menor que 5 E 10 é igual a 10")
else
  write("Falso")
end

if 10 < 5 or 10 == 10 then
  write("Verdadeiro ", "10 é menor que cinco OU 10 é igual a 10")
else
  write("Falso")
end

if not (10 == 5) then
  write("Verdadeiro ", "10 não é igual a 5")
else
  write("Falso")
end

if 10 ~= 5 then
  write("Verdadeiro ", "10 não é igual a 5")
else
  write("Falso")
end

if 1 > 2 then
  write("Verdadeiro ", "um é maior que dois")
elseif 1 < 2 then
  write("Verdadeiro ", "um é mneor que dois")
else
  write("Falso")
end