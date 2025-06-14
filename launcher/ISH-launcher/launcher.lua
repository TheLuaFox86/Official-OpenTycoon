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
cfg.usernname = "???"
cfg.guid = 0
cfg.gamep = os.getenv("PWD") .. "/Game"
cfg.tmpp = tmpd.fullpath
cfg.platform = "linux-ish"
otl.configure(cfg)
otl.launch(tmpd.fullpath)
