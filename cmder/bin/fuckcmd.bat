:: thefuck command for ConEmu
@echo off
REM **************************
REM *     RUN THIS FIRST     *
REM * clink set history_io 1 *
REM **************************
set PYTHONIOENCODING=utf-8
set PYTHONLEGACYWINDOWSSTDIO=yes
tail -n 2 "%CMDER_ROOT%\config\.history" | head -n 1 > "%CMDER_ROOT%\config\fucked_cmd.txt"
set /p fucked_cmd=<"%CMDER_ROOT%\config\fucked_cmd.txt"
thefuck "%fucked_cmd%" > "%CMDER_ROOT%\config\unfucked.cmd"
call "%CMDER_ROOT%\config\unfucked.cmd"
