print('opentycoon ' .. class.opentycoon.game.version)
go = true
while go do
  io.write('$' .. (class.opentycoon.game.money / 100) .. '> ')
  local a = io.read()
  if a == 'exit' then go = false return end
  b = string.split(a, " ")
  c = table.unpack(b, 1, 1)
  pcall(class.opentycoon.command[c], table.unpack(b, 2, b.n))
end