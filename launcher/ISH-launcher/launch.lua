_G.config = {}
local function fls(a)
  a("platform")
  a('tmpp')
  a('gamep')
  a('di')
  a('username')
  a('guid')
end
local otl = {}
function otl.configure(conf)
  config = conf
end

function otl.extract(f, p)
  if p then
    os.execute('unzip -qq -o "' .. f .. '" -d "' .. p .. '"')
    return
  else
    local dir = os.getenv("PWD") .. "/TEMP"
    local out = {
      fullpath = dir,
    }
    os.execute('unzip -qq -o "' .. f .. '" -d "' .. dir .. '"')
    return out
  end
end
function otl.launch(a, win)
for i=1, 500 do
end
local _log = ''
_G.log = function(...)
for i, v in ipairs({...}) do
	_log = _log .. tostring(v)
	if #{...} > 1 and #{...} ~= i then
		_log = _log .. "  |  "
	end
end
_log = _log .. "\n"
end
log(pcall(function()
print('launching...')
config.di = "/"
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
print("Done!")
run(config.di .. "startup" .. config.di .. "cmd.lua")
end))
os.execute("rm -r ./TEMP")
return _log
end
function otl.getcfg()
  return config
end
return otl
