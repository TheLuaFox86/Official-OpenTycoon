otl = require "launch"
local ui = require "ui"
local win = ui.Window("OpenTycoon Luancher")
win:show()
print(win.height, win.width)
opened = true
--ui--
local lv = ui.Label(win, "v0.1", 0, 20)
local username = ui.Entry(win, "Scrudge101", 0, 0, 120, 20)
local launch = ui.Button(win, "launch", 0, win.height - 40, 90, 40)
local versionsel = ui.Entry(win, "1", 0, win.height - 60, 90, 20)
local versions = ui.Label(win, "To Install a verssion go to https://theluafox86.github.io/opentycoon/download\n", 0, win.height - 230, 300, 150)
versions:show()
versionsel:show()
launch:show()
username:show()
vers = {}
local c = 0
for f in sys.Directory("Game\\versions"):list("*.zip") do
  c = c + 1
  versions.text = versions.text .. "[" .. c .. "] " .. f.name .. "\n"
  vers[c] = f
  print(f.path)
end

--ui manager--
function launch:onClick()
  local c = {}
  c.platform = "windows-luart"
  c.gamep = sys.currentdir .. "\\Game\\"
  c.di = "\\"
  c.username = username.text
  --local d = sys.Directory("testing")
  local d = otl.extract(vers[tonumber(versionsel.text)])
  c.tmpp = d.fullpath
  otl.configure(c) 
  sleep(1000)
  otl.launch(d, win)
end
function win:onClose()
  opened = false
  return true
end
repeat
  ui.update(win)
until not opened