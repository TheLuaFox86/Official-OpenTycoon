local otl = require "launch"
local lfs = require "lfs"
local i = 0
local vers = {}
local a = io.read("*Line")
local cfg = {}
cfg.username = "???"
cfg.guid = 0
cfg.gamep = os.getenv("PWD") .. "/Game"
cfg.tmpp = "./TEMP"
cfg.platform = "linux-ish"
otl.configure(cfg)
otl.launch('./temp')
