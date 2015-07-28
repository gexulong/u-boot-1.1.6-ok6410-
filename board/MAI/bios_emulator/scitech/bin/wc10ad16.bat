@echo off
REM Setup for compiling with Watcom C/C++ 10.0a in 32 bit mode (DOS4GW)

if .%CHECKED%==.1 goto checked_build
SET LIB=%SCITECH_LIB%\LIB\RELEASE\DOS16\WC10A;.
echo Release build enabled.
goto setvars

:checked_build
SET LIB=%SCITECH_LIB%\LIB\DEBUG\DOS16\WC10A;.
echo Checked debug build enabled.
goto setvars

:setvars
SET EDPATH=%WC10A_PATH%\EDDAT
SET INCLUDE=INCLUDE;%SCITECH%\INCLUDE;%PRIVATE%\INCLUDE;%WC10A_PATH%\H;%WC10A_PATH%\H\WIN;
SET WATCOM=%WC10A_PATH%
SET MAKESTARTUP=%SCITECH%\MAKEDEFS\WC16.MK
SET USE_WIN16=
SET USE_WIN32=
SET USE_OS216=
SET USE_OS232=
SET USE_OS2GUI=
SET USE_SNAP=
SET WC_LIBBASE=WC10A
SET EDPATH=%WC10A_PATH%\EDDAT
PATH %SCITECH_BIN%;%WC10A_PATH%\BINNT;%WC10A_PATH%\BINB;%DEFPATH%%WC_CD_PATH%

echo Watcom C/C++ 10.0a 16-bit DOS compilation environment set up.
