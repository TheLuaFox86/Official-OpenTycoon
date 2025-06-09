
local function fls(a)
  a("platform")
  a('tmpp')
  a('gamep')
  a('di')
  a('username')
  a('user_guid')
end
local otl = {}
local sys = require "sys"
local zip = require "compression"
function otl.configure(config)
  local function edit(name)
    local f = sys.File("launch\\ITMS\\" .. name .. ".txt")
    f:open("write")
    if name == "user_guid" and config[name] == nil then
      f:write("0")
    else
      f:write(config[name])
    end
    f:flush()
    f:close()
  end
  fls(edit)
end

function otl.extract(f, p)
  local z = zip.Zip(f)
  if p then
    z:extractall(p)
    return ''
  else
  local tmpd = sys.tempdir("OPT")
  z:extractall(tmpd.fullpath)
  return tmpd
  end
end
function otl.launch(a, win)
  win:hide()
  os.execute("luart launch\\launch.lua")
  win:show()
end
function otl.getcfg()
  local config = {}
  local function edit(name, txt)
    local f = sys.File("launch/ITMS/" .. name .. ".txt")
    f:open("read")
    config[name] = f:read()
    f:flush()
    f:close()
  end
  fls(edit)
  return config
end
return otl