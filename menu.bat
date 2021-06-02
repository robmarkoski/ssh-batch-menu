ECHO OFF
REM 
REM Rob Markoski 2021
REM 
REM Version: 0.1
REM 
REM Menu For selecting which machine to connect to. Useful to use with Windows Terminal
REM
REM More Details: https://github.com/robmarkoski/ssh-batch-menu
REM  

REM Title of the window.
Title SSH TO MACHINE

CLS
:MENU
ECHO.
ECHO ...............................................
ECHO   WHICH MACHINE WOULD YOU LIKE TO CONNECT TO?
ECHO ...............................................
ECHO.
ECHO 1 - MERCURY
ECHO 2 - VENUS
ECHO 3 - MARS
ECHO Q - EXIT
ECHO.

REM USEFUL INFO ON HOW THIS WORKS: https://www.robvanderwoude.com/choice.php
REM TO ADD MORE OR LESS JUST INCREASE THE NUMBERS AFTER THE /C COMMAND AND ADD SUBSEQUENT ERRORLEVELS.
REM CURRENTLY TIMES OUT AFTER /T 10 SECONDS ANND DEFAULTS TO /D Q UITTING
CHOICE /C:123Q /T 10 /D Q /M "SELECT WHICH MACHINE TO CONNECT TO: "

IF ERRORLEVEL 1 SET M=1
IF ERRORLEVEL 2 SET M=2
IF ERRORLEVEL 3 SET M=3
IF ERRORLEVEL 4 SET M=4

IF %M%==1 GOTO MERCURY
IF %M%==2 GOTO VENUS
IF %M%==3 GOTO MARS
IF %M%==4 GOTO EXIT

:MERCURY
REM Put Commands here. Simplify by editing .ssh/config
ssh MERCURY
GOTO EXIT

:VENUS
ssh VENUS
GOTO EXIT

:MARS
ssh MARS
GOTO EXIT

:EXIT
ECHO Goodbye.