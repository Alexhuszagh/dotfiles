@echo off

:: Activate "thefuck" command.
:: Create shortcuts for SSH user management and start the SSH agent.
:: Aliases cannot be used inside aliases, so we're going to have to do it
:: the long way.
call "%GIT_INSTALL_ROOT%\cmd\start-ssh-agent.cmd" 1>NUL 2>NUL
