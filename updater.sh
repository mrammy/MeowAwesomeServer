rsync -h -v -r -P -t  ~/Server3/config/JourneyMapServer ~/Server3/Archive/serverconfigs/ && rm -rf ~/Server3/config/JourneyMapServer
rsync -h -v -r -P -t  ~/Server3/config/TickProfiler.cfg ~/Server3/Archive/serverconfigs/ && rm -rf ~/Server3/config/TickProfiler.cfg
rsync -h -v -r -P -t  ~/Server3/config/tickDynamic.cfg ~/Server3/Archive/serverconfigs/ && rm -rf ~/Server3/config/tickDynamic.cfg
rsync -h -v -r -P -t  ~/Server3/config/ForgeAutoShutdown.cfg ~/Server3/Archive/serverconfigs/ && rm -rf ~/Server3/config/ForgeAutoShutdown.cfg
rsync -avx ~/Server3/config ~/Server3/Archive/ && rm -rf ~/Server3/config
rsync -avx ~/Server3/mods ~/Server3/Archive/ && rm -rf ~/Server3/mods
rsync -avx ~/Server3/scripts ~/Server3/Archive/ && rm -rf ~/Server3/scripts
rsync -h -v -r -P -t  ~/Server3/world ~/Server3/Archive/
cd ~/MeowAwesome
git pull
cd ~/
rsync -avx ~/MeowAwesome/minecraft/mods ~/Server3/
rsync -avx ~/MeowAwesome/minecraft/config ~/Server3/
rsync -avx ~/MeowAwesome/minecraft/scripts ~/Server3/
rsync -avx ~/Server3/Archive/servermods/* ~/Server3/mods/
rsync -avx ~/Server3/Archive/serverconfigs/* ~/Server3/config/

# Clean clientside only mods here
rm -rfv ~/Server3/mods/ChatFlow*.jar ~/Server3/mods/ShadowTweaks*.jar ~/Server3/mods/ModpackInfo*.jar ~/Server3/mods/BetterFps*.jar ~/Server3/mods/AquaTweaks*.jar ~/Server3/mods/LoadingProfiler*.jar ~/Server3/mods/SoundFilters*.jar ~/Server3/mods/MouseTweaks*.jar ~/Server3/mods/BabyAnimals*.jar ~/Server3/mods/DefaultWorldGenerator*.jar ~/Server3/mods/TabbyChat*.jar ~/Server3/mods/ResourceLoader*.jar ~/Server3/mods/Ding*.jar ~/Server3/mods/particledist*.jar ~/Server3/mods/UnicodeFontFixer*.jar ~/Server3/mods/journeymap*.jar ~/Server3/mods/CustomMainMenu*.jar ~/Server/mods/BetterFps*.jar
