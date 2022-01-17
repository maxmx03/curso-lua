require("utils")

COUNT = 1

section "Break"
while COUNT < 10 do
  write(COUNT)

  if COUNT == 5 then
    break -- return
  end

  COUNT = COUNT + 1
end

section "goto continue"
COUNT = 1

while COUNT < 10 do
  ::continue::
  COUNT = COUNT + 1

  if (COUNT % 2 ~= 0) then
    goto continue
  end

  write(COUNT)
end
