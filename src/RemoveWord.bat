@echo off
setlocal enabledelayedexpansion

for %%a in (*.*) do (
    set "filename=%%a"
    set "newfilename=!filename:_loop=!"
    ren "%%a" "!newfilename!"
)

echo Done!
pause