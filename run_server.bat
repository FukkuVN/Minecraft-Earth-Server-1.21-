@echo off
echo Current directory: %cd%

if exist "paper-1.21.4-231.jar" (
    echo Found paper-1.21.4-231.jar, moving to server directory...
    move /Y "paper-1.21.4-231.jar" "server\paper-1.21.4-231.jar"
) else (
    echo paper-1.21.4-231.jar not found in current directory.
)

if exist "server\paper-1.21.4-231.jar" (
    echo Starting server...
    cd server
    java -Xms1G -Xmx2G -jar "paper-1.21.4-231.jar" nogui
) else (
    echo Server jar not found in server directory. Please ensure the jar is present.
)

pause
