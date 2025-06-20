print("forge")
for f in platform.fs.listdir(config.gamep .. "/mods") do
	platform.zip.extract(config.gamep .. '/mods/' .. f, config.tmpp)
end
