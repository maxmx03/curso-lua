require("utils")

section("como criar uma string")
local hello = "Hello World"
local hello2 = 'Olá mundo!'

write(hello)
write(hello2)

section("objeto string, seus metodos")
local nome = "Gabriela"

write("Length: ", string.len(nome))
write("#: ", #nome)

local helloWorld = "Hello World"
local helloMars = string.gsub(helloWorld, "World", "Mars")
local primeiraPosicao, segundaPosicao = string.find(helloWorld, "Hello")
local nome = "Max"
local nomeMaiscula = string.upper(nome)
local nomeMiniscula = string.lower(nome)

write(helloMars)
write(primeiraPosicao)
write(segundaPosicao)
write(nomeMaiscula)
write(nomeMiniscula)

section("strings longas")

local html = [[
  <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  
</body>
</html>
]]

local lorem = [[
  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni sit exercitationem ipsum id quaerat ipsa asperiores
libero omnis deserunt quae impedit illum, molestias quis vero ex ducimus! Illum nobis, eos vel modi blanditiis ut
architecto nulla, repudiandae iste officia voluptates! Molestiae odio aliquam id, voluptatibus libero voluptate modi
consectetur maiores voluptas aperiam corporis laboriosam quae facilis animi sapiente ex numquam quis commodi officiis
laudantium eveniet similique iure sint. Accusamus totam ab velit veniam deserunt maxime nemo natus praesentium
voluptatum aspernatur maiores, cumque eum ducimus beatae excepturi quisquam? Nobis suscipit exercitationem animi
veritatis maiores! Perspiciatis ad enim fugit corrupti aliquid consectetur voluptatibus voluptas delectus voluptatum
exercitationem sed magni est assumenda nulla quia dolor rerum, provident recusandae ut magnam quis nobis? Quos soluta
nostrum voluptatibus et ratione. Perspiciatis ipsam voluptates non, nulla vel mollitia saepe ducimus illo ab voluptate
id natus eum architecto. Ducimus ipsum cum rerum odit ullam amet voluptatibus quos labore. Exercitationem iste unde a
reprehenderit tempore repudiandae assumenda porro neque, quis nulla maxime, quisquam voluptas tempora ea architecto
dolorem consequuntur illo? Laboriosam, doloribus, ratione exercitationem at maxime tempora facilis reprehenderit
recusandae ex est commodi error illum consequatur nisi? Nostrum a reiciendis, amet numquam fuga consequuntur voluptas
sit dicta perferendis?
]]

write(html)
write(lorem)

section("formatar strings")
write(string.format("texto: %s", "Meu texto"))
write(string.format("Numero Inteiro: %d", 10))
write(string.format("Numero Float: %.1f", 10.5))
write(string.format("Hexadecimal: %x", 200))
