`local otl = require "launch"
config = otl.getcfg()
config.di = "\\"
local function run(p)
  dofile(config.tmpp .. p)
end
run(config.di .. "startup" .. config.di .. "init" .. config.di .. config.platform .. ".lua")
pcall(function()
  pluginp = config.di .. "startup" .. config.di .. "plugin"
  config.pluginp = pluginp
  run(pluginp .. config.di .. "init.lua")
end)
run(config.di .. "startup" .. config.di .. "classloader.lua")
run(config.di .. "startup" .. config.di .. "cmd.lua")