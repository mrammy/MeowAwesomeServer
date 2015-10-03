#!/bin/bash
source ./config.sh

rsync -h -v -r -P -t  $CURRENTDIR/config/JourneyMapServer $CURRENTDIR/Archive/serverconfigs/ && rm -rf $CURRENTDIR/config/JourneyMapServer
rsync -h -v -r -P -t  $CURRENTDIR/config/TickProfiler.cfg $CURRENTDIR/Archive/serverconfigs/ && rm -rf $CURRENTDIR/config/TickProfiler.cfg
rsync -h -v -r -P -t  $CURRENTDIR/config/tickDynamic.cfg $CURRENTDIR/Archive/serverconfigs/ && rm -rf $CURRENTDIR/config/tickDynamic.cfg
rsync -h -v -r -P -t  $CURRENTDIR/config/ForgeAutoShutdown.cfg $CURRENTDIR/Archive/serverconfigs/ && rm -rf $CURRENTDIR/config/ForgeAutoShutdown.cfg
rsync -avx $CURRENTDIR/config $CURRENTDIR/Archive/ && rm -rf $CURRENTDIR/config
rsync -avx $CURRENTDIR/mods $CURRENTDIR/Archive/ && rm -rf $CURRENTDIR/mods
rsync -avx $CURRENTDIR/scripts $CURRENTDIR/Archive/ && rm -rf $CURRENTDIR/scripts
rsync -h -v -r -P -t  $CURRENTDIR/world $CURRENTDIR/Archive/

git submodule update --remote
git add $CURRENTDIR/Archive/MeowAwesome
git commit -m "Pack Update = Server Update"
git push

rsync -avx $CURRENTDIR/Archive/MeowAwesome/minecraft/mods $CURRENTDIR/
rsync -avx $CURRENTDIR/Archive/MeowAwesome/minecraft/config $CURRENTDIR/
rsync -avx $CURRENTDIR/Archive/MeowAwesome/minecraft/scripts $CURRENTDIR/
rsync -avx $CURRENTDIR/Archive/servermods/* $CURRENTDIR/mods/
rsync -avx $CURRENTDIR/Archive/serverconfigs/* $CURRENTDIR/config/

# Clean clientside only mods here
rm -rfv $CURRENTDIR/mods/ambiotic*.jar $CURRENTDIR/mods/ChatFlow*.jar $CURRENTDIR/mods/ShadowTweaks*.jar $CURRENTDIR/mods/ModpackInfo*.jar $CURRENTDIR/mods/BetterFps*.jar $CURRENTDIR/mods/AquaTweaks*.jar $CURRENTDIR/mods/LoadingProfiler*.jar $CURRENTDIR/mods/SoundFilters*.jar $CURRENTDIR/mods/MouseTweaks*.jar $CURRENTDIR/mods/BabyAnimals*.jar $CURRENTDIR/mods/DefaultWorldGenerator*.jar $CURRENTDIR/mods/TabbyChat*.jar $CURRENTDIR/mods/ResourceLoader*.jar $CURRENTDIR/mods/Ding*.jar $CURRENTDIR/mods/particledist*.jar $CURRENTDIR/mods/UnicodeFontFixer*.jar $CURRENTDIR/mods/CustomMainMenu*.jar ~/Server/mods/BetterFps*.jar

unset CURRENTDIR
