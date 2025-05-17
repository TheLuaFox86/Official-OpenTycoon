class.opentycoon.command:command('inv', function(mode, ...)
    if mode == 'check' then
      print('yay')
      local a = ...
      local b = class:getById("item", a)
      local p = 0
      for k,v in pairs(b) do
        if k and (type(v) == "string" or type(v) == "number") then
          if k == "price" then
            print(k .. '=' .. tonumber(v) / 100)
          elseif k == "profit" then
            print(k .. '=' .. (b.price * tonumber(v)) / 100)
          else
            print(k .. '=' .. v)
          end
        end
      end
    end
end)