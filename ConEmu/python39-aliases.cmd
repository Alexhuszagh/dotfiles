;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
python=py -3.9 $*
pip=py -3.9 -m pip $*
wheel=py -3.9 -m wheel $*
ipython=py -3.9 -m IPython
