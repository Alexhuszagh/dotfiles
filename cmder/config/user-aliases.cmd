;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

;= For thefuck
fuck=fuckcmd

;= SSH Agent Defaults and Helpers
start-ssh-agent="C:\Program Files\Git\cmd\start-ssh-agent.cmd" $*
ssh-add="C:\Program Files\Git\usr\bin\ssh-add.exe" $*
ssh-add-git="C:\Program Files\Git\usr\bin\ssh-add.exe" "C:\Users\ahusz\.ssh\git"
