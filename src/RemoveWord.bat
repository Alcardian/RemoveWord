@echo off
setlocal enabledelayedexpansion

set /p word=Enter the word to remove from file names:

for %%a in (*.*) do (
    set "filename=%%a"
    set "newfilename=!filename:%word%=!"
    ren "%%a" "!newfilename!"
)

echo Done!
pause
