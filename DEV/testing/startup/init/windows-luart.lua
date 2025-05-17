_G.platform = {}
local sys = require "sys"
platform.fs = {}
function platform.fs.listdir(p)
    local o = {}
    for a in sys.fsentry(p):list('*.*') do
      table.insert(o, a.name)
    end
    return each(o)
end