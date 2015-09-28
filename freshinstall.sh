source ./config.sh
rm -rf forge-*-installer.jar*
wget http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGEVERSION/forge-$FORGEVERSION-installer.jar
java -jar forge-$FORGEVERSION-installer.jar --installServer && rm -rf forge-$FORGEVERSION-installer.jar.log && rm -rf forge-$FORGEVERSION-installer.jar
