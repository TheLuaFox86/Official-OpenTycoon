#!/bin/bash
$WD= $PWD
cd $HOME/OpenTycoon
lua5.3 launcher.lua
cd $WD
n/main/VI-linux.lua && lua5.3 VI-linux.lua $HOME/OpenTycoon/Game
$WD= $PWD
cd $HOME/OpenTycoon
lua5.3 launcher.lua
cd $WD
