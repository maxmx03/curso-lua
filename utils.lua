function write(...)
  io.write(...)
  io.write("\n")
end

function section(title)
  local symbol = string.rep("=", 25)

  io.write(string.format("%s %s %s \n", symbol, title, symbol))
end
