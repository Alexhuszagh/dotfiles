:: use this file to run your own startup commands
:: use  in front of the command to prevent printing the command

:: uncomment this to have the ssh agent load when cmder starts
:: call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd"

:: uncomment this next two lines to use pageant as the ssh authentication agent
:: SET SSH_AUTH_SOCK=/tmp/.ssh-pageant-auth-sock
:: call "%GIT_INSTALL_ROOT%/cmd/start-ssh-pageant.cmd"

:: you can add your plugins to the cmder path like so
:: set "PATH=%CMDER_ROOT%\vendor\whatever;%PATH%"

@echo off

:: Activate "thefuck" command.
:: Create shortcuts for SSH user management and start the SSH agent.
:: Aliases cannot be used inside aliases, so we're going to have to do it
:: the long way.
alias fuck=fuckcmd && ^
alias start-ssh-agent="%GIT_INSTALL_ROOT%\cmd\start-ssh-agent.cmd" $* && ^
alias ssh-add="%GIT_INSTALL_ROOT%\usr\bin\ssh-add.exe" $* && ^
alias ssh-add-git="%GIT_INSTALL_ROOT%\usr\bin\ssh-add.exe" "%USERPROFILE%\.ssh\git" && ^
start-ssh-agent 1> NUL 2>NUL
