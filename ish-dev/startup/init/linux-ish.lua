_G.platform = {}
local lfs = require "lfs"
platform.fs = {}
function platform.fs.listdir(p)
  local a = {}
	for b in lfs.dir(p) do
		if b ~= '.' and b ~= '..' then
			table.insert(a, b)
		end
	end
	return function()
		local _, v = next(a)
		return v
	end
end
platform.Zip = {}
function platform.Zip.extract(file, to)
  os.execute('unzip -o "' .. file .. '" -d "' .. to .. '"')
end
