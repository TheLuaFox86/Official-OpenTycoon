print('type "gotv" to get a version or press enter to goto launcher')
if io.read('*l') ~= "gotv" then
	return
end
do
	local iowrite = _G.io.write
	_G.io.write = function(...)
		iowrite(...)
		io.flush()
	end
	function wg(url, fP, toP)
		os.execute("wget '" .. url .. "/" .. fP .. "' '" .. toP .. "'")
	end
end
local repo = "https://raw.githubusercontent.com/TheLuaFox86/Offical-OpenTycoon/main"
print("type The Version Name You Want to get ie: Alpha5-forge")
a = io.read('*l')
wg(repo, a .. '.zip', arg[1] .. '/versions/' .. a .. '.zip')

