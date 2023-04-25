@echo off
setlocal EnableDelayedExpansion

for %%f in (*.*) do (
  if /I not "%%~xf"==".bat" (
	  set "filename=%%~nf"
	  set "extension=%%~xf"
	  REM Change 49 & 64 to change the character range to remove. It removes characters at the 49th to 64th position if left unchanged.
	  set "newname=!filename:~0,49!!filename:~64!!extension!"
	  echo File "%%f": "!newname!"
	  REM use REM at start on line bellow (line 12) to just print the new file name. Remove REM from line bellow if it looks like you want it to make the next run of the script rename the files.
	  REM ren "%%f" "!newname!"
  )
)

echo All done!
pause