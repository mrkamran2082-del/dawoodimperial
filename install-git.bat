@echo off
echo Downloading Git for Windows...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.2/Git-2.42.0.2-64-bit.exe' -OutFile 'Git-Installer.exe'"
echo Installing Git...
start /wait Git-Installer.exe /VERYSILENT /NORESTART
echo Git installation completed!
del Git-Installer.exe
echo Please restart your computer and run the Git commands again.
pause