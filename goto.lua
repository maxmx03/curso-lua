local contador = 1
local limitador = 10

goto mostrar

::incrementar::
contador = contador + 1
goto mostrar

::verificar::
if contador < limitador then
  goto incrementar
else
  goto fim
end

::mostrar::
io.write(contador, "\n")
goto verificar

::fim::
io.write("fim do loop")
