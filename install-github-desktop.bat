@echo off
echo Downloading GitHub Desktop...
powershell -Command "Invoke-WebRequest -Uri 'https://central.github.com/deployments/desktop/desktop/latest/win32' -OutFile 'GitHubDesktopSetup.exe'"
echo Installing GitHub Desktop...
start /wait GitHubDesktopSetup.exe
echo GitHub Desktop installation completed!
del GitHubDesktopSetup.exe
echo GitHub Desktop is ready to use!
echo You can now use GitHub Desktop to upload your files to GitHub.
pause