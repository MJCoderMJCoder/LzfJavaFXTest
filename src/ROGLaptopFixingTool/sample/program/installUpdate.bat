@echo off
color 2e
echo -------------------------------------------------------------------
echo 你正在使用的是Armoury Crate2.3.5 V8贴吧版by蒙面西红柿
echo -------------------------------------------------------------------
cd /d "%~dp0"
set pa=%~dp0
REM 后续命令使用的是：UTF-8编码
chcp 65001

echo 更新所有奥创组件到最新
echo -------------------------------------------------------------------
echo 正在更新所有奥创组件到最新
set pc=%pa%\ASUSService.UpdatePackage.exe
%pc% /x
%pc%
ECHO.

echo 安装完成！
pause
exit