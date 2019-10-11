@echo off
color 2e
echo -------------------------------------------------------------------
echo 你正在使用的是Armoury Crate2.3.0/2.3.5 V7贴吧版by蒙面西红柿
echo -------------------------------------------------------------------
cd /d "%~dp0"
set pa=%~dp0

echo A选项：安装奥创相关组件至稳定版本（建议非枪3和冰锐机型选择）
echo B选项：安装奥创相关组件至最新版本（建议枪3和冰锐机型选择）
echo C选项：安装RogLiveService
echo D选项：安装ASUS System Control Interface V2
echo E选项：更新所有奥创组件到最新
echo F选项：修复9750H CPU信息不显示的问题
echo G选项：修复8750H CPU信息不显示的问题
echo -------------------------------------------------------------------
choice  /c ABCDEFG /m "请选择安装模式：（输入对应子母，大小写无所谓）" /d a /t 20

if %errorlevel%==1 goto function1

if %errorlevel%==2 goto function2

if %errorlevel%==3 goto function3

if %errorlevel%==4 goto function4

if %errorlevel%==5 goto function5

if %errorlevel%==6 goto function6

if %errorlevel%==7 goto function7

:function1
echo 你选择安装奥创相关组件至稳定版本
echo -------------------------------------------------------------------
echo 正在写入RogLiveService 1.0.9.6，请不要进行其他操作.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo 安装Armoury Crate Service2.3.0服务。
set pd=%pa%\Service\ArmouryCrate.Service.msi
start /wait %pd% /qf
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit

:function2
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

:function3
echo 你选择安装RogLiveService 
echo -------------------------------------------------------------------
echo 正在写入RogLiveService 1.0.9.6，请不要进行其他操作.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit

:function4
echo 安装ASUS System Control Interface V2
echo -------------------------------------------------------------------
echo 正在安装ASUS System Control Interface V2
set pe=%pa%\ASUSSystemControlInterfaceV2_W10_64_V20140\Install.bat
call %pe%
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit

:function5
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

:function6
echo 正在注册CPU信息
echo -------------------------------------------------------------------
echo 正在注册CPU信息
set pc=%pa%\Intel(9750h)\ArmouryCrateServiceCore.msi
start /wait %pc% /qf
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit

:function7
echo 正在注册CPU信息
echo -------------------------------------------------------------------
echo 正在注册CPU信息
set pc=%pa%\Intel(8750h)\ArmouryCrateServiceCore.msi
start /wait %pc% /qf
ECHO.

echo 安装完成，记得重启电脑哦！
pause
exit