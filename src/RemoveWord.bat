@echo off
setlocal enabledelayedexpansion
echo Script is for changing all file-names in the folder.
echo "word" mode lets you remove an exact string of characters (like a word).
echo "sequence" mode lets you remove all characters between start position to end position.

REM Mode selection
:mode
set /p mode=Do you want to remove word (1) or sequence (2)? (1/2)
if /i "%mode%"=="word" goto word
if /i "%mode%"=="1" goto word
if /i "%mode%"=="sequence" goto sequence
if /i "%mode%"=="2" goto sequence
goto mode

REM Word removal mode
:word
set /p removeWord=Enter the word to remove from files:
echo Files before and after renaming:
for %%i in (*.*) do (
  if /i not "%%~xi"==".bat" (
	set "name=%%i"
	set "newName=!name:%removeWord%=!"
	REM using "" around the names to make it easier to see blankspace at start or end of name.
	echo "%%i": "!newName!"
  )
)
set /p answer=Do you want to do this name change for files? (y/n)
if /i not "%answer%"=="y" (
  goto word
)
for %%i in (*) do (
  if /i not "%%~xi"==".bat" (
    set "name=%%i"
	set "newName=!name:%removeWord%=!"
	ren "%%i" "!newName!"
  )
)
echo File name change complete.
pause
goto end

REM Character sequence removal mode
:sequence
:posStart
set /p posStart=Enter starting position (number):
for /f "tokens=1,2 delims=0123456789" %%a in ("%posStart%") do if not "%%b"=="" goto posStart
:posEnd
set /p posEnd=Enter end position (number):
for /f "tokens=1,2 delims=0123456789" %%a in ("%posEnd%") do if not "%%b"=="" goto posEnd
echo Files before and after renaming:
for %%i in (*) do (
  if /i not "%%~xi"==".bat" (
    set name=%%~ni
	set "newName=!name:~0,%posStart%!!name:~%posEnd%!%%~xi"
	REM using "" around the names to make it easier to see blankspace at start or end of name.
	echo "%%i": "!newName!"
  )
)
set /p answer=Do you want to do this name change for files? (y/n)
if /i not "%answer%"=="y" (
  goto sequence
)
for %%i in (*) do (
  if /i not "%%~xi"==".bat" (
    set name=%%~ni
    set "newName=!name:~0,%posStart%!!name:~%posEnd%!%%~xi"
    ren "%%i" "!newName!"
  )
)
pause
goto end

REM end
:end
