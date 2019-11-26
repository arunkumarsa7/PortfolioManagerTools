@echo off
echo     __  ___      _____ ____    __       _____           _       __     ____                             
echo    /  //  /_  __/ ___// __ \  / /      / ___/__________(_)___  / /_   / __ \__  ______  ____  ___  _____
echo   / //_/ / / / /\__ \/ / / / / /       \__ \/ ___/ ___/ / __ \/ __/  / /_/ / / / / __ \/ __ \/ _ \/ ___/
echo  / /  / / /_/ /___/ / /_/ / / /___    ___/ / /__/ /  / / /_/ / /_   / _, _/ /_/ / / / / / / /  __/ /    
echo /_/  /_/\__, //____/\___\_\/_____/   /____/\___/_/  /_/ .___/\__/  /_/ /_/\__,_/_/ /_/_/ /_/\___/_/     
echo        /____/                                        /_/                                                
echo.

set PROPERTY_FILE=%cd%\config\SQL.properties
set ROOT_LOCATION=%cd%

set File=%PROPERTY_FILE%
set /a count=0
SETLOCAL enabledelayedexpansion
for /F "tokens=* delims=" %%a in ('Type "%File%"') do (
    Set /a count+=1
    Set "output[!count!]=%%a"     
)

For /L %%i in (1,1,%Count%) Do (	
	for /f "tokens=1,2 delims==" %%a in ("!output[%%i]!") do (
		IF "%%a"=="MY_SQL_ROOT" (
			set MY_SQL_ROOT=%%b
		)
		IF "%%a"=="SCRIPT_FILES_ROOT" (
			set SCRIPT_FILES_ROOT=%%b
		)
	)
)

cd /d %MY_SQL_ROOT%

setlocal enabledelayedexpansion
set /a count = 1
for %%f in ("%SCRIPT_FILES_ROOT%\*.sql") do (  
  echo Running...  
  echo !count!. "%%f"
  mysql --defaults-extra-file="%ROOT_LOCATION%\config\config.cnf" PORTFOLIO_MANAGER < %%f 
  set /a count += 1
  echo.
)