local otl = require "launch"
local lfs = require "lfs"
local i = 0
local vers = {}
for f in lfs.dir("./Game/versions") do
  if f ~= "." and f ~= ".." then
    i = i + 1
    print("[" .. i .. "]  " .. f)
    vers[i] = "Game/versions/" .. f
  end
end
local a = io.read("*Line")
local tmpd = otl.extract(vers[tonumber(a)])
local cfg = {}
cfg.username = ""
cfg.guid = 0
cfg.gamep = os.getenv("PWD") .. "/Game"
cfg.tmpp = tmpd.fullpath
cfg.platform = "linux-ish"
pcall(function()
local f = io.open("Account.otla")
local account = load('return ' .. f:read("*a"), '=account', 't')()
f:flush()
f:close()
cfg.username = account.user
cfg.guid = account.guid
end)
otl.configure(cfg)
os.execute("clear")
local _log = otl.launch(tmpd.fullpath)
local f = io.open("latestlog.txt", "w+")
f:write(_log)
f:flush()
f:close()
