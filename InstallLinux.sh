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
unzip ./Official-OpenTycoon/launcher/ISH-launcher.zip -d ./OpenTycoon
cp ./Official-OpenTycoon/launcher/ISH-launcher/start.sh /bin/otl
chmod +x /bin/otl
mkdir OpenTycoon/Game
mkdir OpenTycoon/Game/versions
cp Official-OpenTycoon/Versions/alpha5/Alpha5.zip OpenTycoon/Game/versions
rm -r Official-OpenTycoon
cd $WD
