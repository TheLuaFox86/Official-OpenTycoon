_G.class =  {}
function class:append(tb)
  if not self[tb.domain] then self[tb.domain] = {} end
  self[tb.domain][tb.type] = tb
end
function class:getById(t, id)
  local a = {}
  for i, v in ipairs(id:split(":")) do
    a[i]=v
  end
  if not a[2] then
    a[2] = a[1]
    a[1] = "opentycoon"
  end
  return self[a[1]][t][a[2]]
end
function class:setById(t, id, val)
  local a = {}
  for i, v in ipairs(id:split(":")) do
    a[i]=v
  end
  if not a[2] then
    a[2] = a[1]
    a[1] = "opentycoon"
  end
  self[a[1]][t][a[2]] = val
 end
log("Plugin PH2:")
log(pcall(function()
    pluginp = config.tmpp .. "/startup/plugin"
    config.pluginp = pluginp
    dofile(pluginp .. config.di .. 'init4mods.lua')
end))
log("Loading Classes")
for i=-99, 1098  do
for a in platform.fs.listdir(config.tmpp .. config.di .. "class") do
  log(a, i)
  if tonumber(a:sub(1, 3)) == i then
    dofile(config.tmpp .. config.di .. "class" .. config.di .. a)
  end
end
end
