local otl = require "launch"
local lfs = require "lfs"
local i = 0
local vers = {}
local cfg = {}
cfg.di = '/'
cfg.username = "???"
cfg.guid = 0
cfg.gamep = os.getenv("PWD") .. "/Game"
cfg.tmpp = os.getenv("PWD") .. "/TEMP"
cfg.platform = "linux-ish"
otl.configure(cfg)
otl.launch('./TEMP')
