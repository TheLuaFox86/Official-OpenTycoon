rm Game.zip Game-forge.zip
rm -r TMP
mkdir TMP
cp -u -r GameSRC/* TMP
mkdir TMP/startup/init
cp -r Platform_scripts/* TMP/startup/init
cd TMP
zip -u -r -D ../Game.zip *
cd ..
mkdir TMP/startup/plugin
cp -r Forge/* TMP/startup/plugin
cd TMP
zip -u -r ../Game-forge.zip *
cd ..
