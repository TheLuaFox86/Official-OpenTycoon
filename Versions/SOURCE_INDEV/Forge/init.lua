print("forge")
for f in platform.fs.listdir(config.gamep .. "/mods") do
	platform.zip.unzip(config.gamep .. '/mods/' .. f, config.tmpp)
end
