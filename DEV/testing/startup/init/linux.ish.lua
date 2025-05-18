_G.platform = {}
local lfs = require "lfs"
platform.fs = {}
function platform.fs.listdir(p)
  return lfs.list(p)
end
platform.Zip = {}
local zip = require "compression"
function platform.zip.extract(file, to)
  os.execute('unzip -o "' .. file .. '" -d "' .. to .. '"')
end