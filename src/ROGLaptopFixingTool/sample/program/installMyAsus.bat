@echo off
color 2e
echo -------------------------------------------------------------------
echo 你正在使用的是Armoury Crate2.3.5 V8贴吧版by蒙面西红柿
echo -------------------------------------------------------------------
cd /d "%~dp0"
set pa=%~dp0
REM 后续命令使用的是：UTF-8编码
chcp 65001

echo 安装ASUS System Control Interface V2
echo -------------------------------------------------------------------
echo 正在安装ASUS System Control Interface V2
set pe=%pa%\ASUSSystemControlInterfaceV2_W10_64_V20140\Install.bat
call %pe%
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit