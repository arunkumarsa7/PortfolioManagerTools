@echo off
echo            ----------------------
echo     	  -------made by @run-----
echo            ----------------------
echo  _ ----------------------------------------------- _
echo -_           MySQL Script Runner                   _ -
echo    -----------------------------------------------
echo.
set MY_SQL_ROOT=C:\Program Files\MySQL\MySQL Server 8.0\bin
set MY_SQL_USER_NAME=root
set MY_SQL_PASSWORD=root
set SCRIPT_FILES_ROOT=C:\Users\Arun Kumar S A\Documents\PortfolioManagerDocs\SQL Scripts
set SCRIPT_LOG_ROOT=C:\Users\Public\PortfolioManager\logs

cd /d %MY_SQL_ROOT%
mysql --user=%MY_SQL_USER_NAME% --password=%MY_SQL_PASSWORD% PORTFOLIO_MANAGER < "%SCRIPT_FILES_ROOT%\1_PORTFOLIO_MANAGER_DDL_DROP_SCRIPTS.sql"
mysql --user=%MY_SQL_USER_NAME% --password=%MY_SQL_PASSWORD% PORTFOLIO_MANAGER < "%SCRIPT_FILES_ROOT%\2_PORTFOLIO_MANAGER_DDL_CREATE_SCRIPTS.sql"
mysql --user=%MY_SQL_USER_NAME% --password=%MY_SQL_PASSWORD% PORTFOLIO_MANAGER < "%SCRIPT_FILES_ROOT%\3_PORTFOLIO_MANAGER_DDL_ALTER_SCRIPTS.sql"
mysql --user=%MY_SQL_USER_NAME% --password=%MY_SQL_PASSWORD% PORTFOLIO_MANAGER < "%SCRIPT_FILES_ROOT%\4_PORTFOLIO_MANAGER_DDL_INDEX_SCRIPTS.sql"
mysql --user=%MY_SQL_USER_NAME% --password=%MY_SQL_PASSWORD% PORTFOLIO_MANAGER < "%SCRIPT_FILES_ROOT%\5_PORTFOLIO_MANAGER_DML_INSERT_SCRIPTS.sql"