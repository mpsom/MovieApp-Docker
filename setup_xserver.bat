@echo off
echo Configuring DISPLAY for Docker...
setx DISPLAY host.docker.internal:0.0

echo Checking if VcXsrv is installed...
if not exist "C:\Program Files\VcXsrv\vcxsrv.exe" (
    echo ERROR: VcXsrv is not installed! Please download and install it from:
    echo https://sourceforge.net/projects/vcxsrv/
    pause
    exit /b
)

echo Killing any existing VcXsrv instances...
taskkill /IM vcxsrv.exe /F >nul 2>&1

echo Starting X server...
start "" "C:\Program Files\VcXsrv\vcxsrv.exe" -multiwindow -clipboard -wgl -ac

echo VcXsrv started successfully!
echo You can now run: docker-compose up -d
pause
