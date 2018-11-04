@echo off
@rem ----[ This code block detects if the script in right place]-------
if not exist "%~dp0vlc.exe" (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: CAN'T FIND VLC EXECUTABLE FILE ############
   echo Please put these files in your VLC directory and then run this file.
   echo ##########################################################
   echo.
   pause
   exit /B 1
) else (
   echo [Ok] Vlc.exe detected! All ok!
)
@rem ----[ This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits]-------
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
   echo [Ok] Administrator PRIVILEGES Detected! All ok!
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
   echo This script must be run as administrator to work properly!  
   echo If you're seeing this after clicking on, then right click on the shortcut and select "Run As Administrator".
   echo ##########################################################
   echo.
   pause
   exit /B 1
)
@rem ----[ This code block make all registry changes]-------
@echo.
echo Removing vlc:// association...

reg delete HKCR\vlc /f

@echo.
pause
