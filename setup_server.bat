@echo off
REM Setup script for Minecraft PaperMC 1.20+ server with GeyserMC and Floodgate plugins

REM Create server directory structure
mkdir server
mkdir server\plugins
mkdir server\plugins\Geyser-Spigot

REM Move PaperMC jar into server directory and rename
if exist "paper-1.21.4-231 (1).jar" (
    move /Y "paper-1.21.4-231 (1).jar" server\paper-1.21.4-231.jar
)

REM Download Geyser-Spigot plugin jar if not present
if not exist server\plugins\Geyser-Spigot.jar (
    echo Downloading Geyser-Spigot plugin...
    powershell -Command "Invoke-WebRequest -Uri https://github.com/GeyserMC/Geyser/releases/latest/download/Geyser-Spigot.jar -OutFile server\plugins\Geyser-Spigot.jar"
)

REM Download Floodgate plugin jar if not present
if not exist server\plugins\floodgate-spigot.jar (
    echo Downloading Floodgate plugin...
    powershell -Command "Invoke-WebRequest -Uri https://github.com/GeyserMC/Floodgate/releases/latest/download/floodgate-spigot.jar -OutFile server\plugins\floodgate-spigot.jar"
)

REM Create GeyserMC config.yml
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

echo Setup complete. You can start the server by running:
echo cd server
echo java -jar paper-1.21.4-231.jar
pause
