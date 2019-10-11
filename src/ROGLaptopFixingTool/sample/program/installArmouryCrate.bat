@echo off
color 2e
echo -------------------------------------------------------------------
echo 你正在使用的是Armoury Crate2.3.5 V8贴吧版by蒙面西红柿
echo -------------------------------------------------------------------
cd /d "%~dp0"
set pa=%~dp0
REM 后续命令使用的是：UTF-8编码
chcp 65001

echo 你选择安装奥创相关组件至最新版本
echo -------------------------------------------------------------------
echo 此页面提示重启前不要重启！！！！
echo 此页面提示重启前不要重启！！！！
echo 此页面提示重启前不要重启！！！！
echo 正在写入RogLiveService 1.0.9.6，请不要进行其他操作.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo 安装Armoury Crate Service2.3.0服务。
set pd=%pa%\Service\ArmouryCrate.Service.msi
start /wait %pd% /qf
ECHO.

echo 更新Armoury Crate Service至2.3.5版本
set pc=%pa%\ASUSService.UpdatePackage.exe
%pc% /x
%pc%
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit