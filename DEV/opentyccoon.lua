local otl = require "launch"
local sys = require "sys"
local d =  sys.Directory('testing')
local cfg = {}
local a = ...

cfg.platform = "windows-luart"
cfg.tmpp = d.path
cfg.gamep = sys.currentdir
cfg.username="Scrudge"
otl.configure(cfg)
otl.launch(d, {
    show=function(self)
      return
    end,
    hide=function(self)
      return
    end
})