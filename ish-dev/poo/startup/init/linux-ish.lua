_G.platform = {}
local lfs = require "lfs"
platform.fs = {}
function platform.fs.listdir(p)
  local a = {}
	i = 0
	for b in lfs.dir(p) do
		if b ~= '.' and b ~= '..' then
			a[i] = b
		end
	end
	i = 0
	return function()
		i = i + 1
		return a[i]
	end
end
platform.Zip = {}
function platform.Zip.extract(file, to)
  os.execute('unzip -o "' .. file .. '" -d "' .. to .. '"')
end
