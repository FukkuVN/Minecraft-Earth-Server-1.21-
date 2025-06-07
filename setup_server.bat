@echo off
REM Setup script for Minecraft PaperMC 1.20+ server with GeyserMC and Floodgate plugins

REM Create server directory structure
mkdir server
mkdir server\plugins

REM Download PaperMC 1.20+ server jar
echo Downloading PaperMC 1.20+ server jar...
powershell -Command "Invoke-WebRequest -Uri https://api.papermc.io/v2/projects/paper/versions/1.20/builds/158/downloads/paper-1.20-158.jar -OutFile server\paper-1.20-158.jar"

REM Download GeyserMC plugin jar
echo Downloading Geyser-Spigot plugin...
powershell -Command "Invoke-WebRequest -Uri https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot -OutFile server\plugins\Geyser-Spigot.jar"

REM Download Floodgate plugin jar
echo Downloading Floodgate-Spigot plugin...
powershell -Command "Invoke-WebRequest -Uri https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot -OutFile server\plugins\Floodgate-Spigot.jar"

REM Create GeyserMC config.yml (initial setup)
echo Creating GeyserMC config.yml...
(
echo bedrock:
echo ^  address: 0.0.0.0
echo ^  port: 19132
echo.
echo remote:
echo ^  address: 127.0.0.1
echo ^  port: 25565
echo.
echo auth-type: floodgate
) > server\plugins\Geyser-Spigot\config.yml

echo.
echo Setup complete!
echo To start the server, run:
echo cd server
echo java -Xms1G -Xmx2G -jar paper-1.20-158.jar nogui
pause
