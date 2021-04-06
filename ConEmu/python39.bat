call "%ConEmuDir%\..\init.bat"
call alias python=py -3.9 $*
call alias pip=py -3.9 -m pip $*
call alias wheel=py -3.9 -m wheel $*
call alias ipython=py -3.9 -m IPython $*
