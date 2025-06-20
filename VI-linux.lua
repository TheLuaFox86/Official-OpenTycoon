print('type "gotv" to get a version or press enter to goto launcher')
if io.read('*l') ~= "gotv" then
	return
end
do
	_G.string.split = function(txt, del)
	local out = {}
	local c = 0
	local a = ""
	i = 0
	for _=1, #txt do
		i = i + 1
		if txt:sub(i , i + (#del - 1)) == del then
			c = c + 1
			out[c] = a
			a = ""
			i = i + (#del - 1)
		else
			--print(txt:sub(i, i + (#del - 1)))
			a = a .. txt:sub(i, i)
		end
	end
	out[c + 1] = a
	return out
end
	local iowrite = _G.io.write
	_G.io.write = function(...)
		iowrite(...)
		io.flush()
	end
	function wg(url, fP, toP)
		os.execute("wget '" .. url .. "/" .. fP .. "' '" .. toP .. "'")
	end
end
local repo = "https://github.com/TheLuaFox86/Official-OpenTycoon/raw/main"
print("type The Version Name You Want to get ie: alpha5/Alpha5-forge")
a = io.read('*l')
wg(repo, a .. "/Versions/" .. a .. '.zip', arg[1] .. '/versions/' .. a:split("/")[2] .. '.zip')

