WD=$PWD
cd $HOME
apk add git
apk add luarocks5.3
apk add zip
apk add openssh
apk add lua-filesystem
apk add nano
git clone https://github.com/TheLuaFox86/Official-OpenTycoon.git
mkdir ./OpenTycoon
cp Official-OpenTycoon/launcher/ISH-launcher/* ./OpenTycoon -r
cp ./Official-OpenTycoon/launcher/ISH-launcher/start.sh /bin/otl
chmod +x /bin/otl
mkdir OpenTycoon/Game
mkdir OpenTycoon/Game/versions
cp Official-OpenTycoon/Versions/Latest.zip OpenTycoon/Game/versions/latest.zip
rm -r Official-OpenTycoon
cd $WD
