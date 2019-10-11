@echo off 
::设置CMD窗口字体颜色为0a 在CMD中输入命令 color /? 可查看颜色列表
color 0a
::设置CMD窗口显示模式为100列宽 20行高
MODE con: COLS=100 LINES=20
echo  -------------------
echo    choice 命令示例
echo  -------------------
echo.
echo.
:: /c按键列表 /m提示内容 /d默认选择 /t等待秒数   /d 必须和 /t同时出现
choice  /c abcde /m "请输入" /d e /t 5

set str=青天有月来几时 我今停杯一问之 人攀明月不可得 月行却与人相随
setlocal enabledelayedexpansion
set col=CAD9B
for /f "tokens=1-4 delims= " %%1 in ("%str%") do (echo.
for %%m in (%%1 %%2 %%3 %%4) do (set s=%%m
for /l %%a in (0,1,6) do (
call set b=0%%col:~!x!,1%%
set /a x+=1&if !x!==5 (set x=0)
set c=!s:~%%a,1!
set/p= <nul>!c! 
findstr /a:!b! .* "!c!*"
del !c!
ping /n 1 /w 500 127.1>nul&ping /n 1 /w 500 127.1>nul&ping /n 1 /w 500 127.1>nul)
echo.&echo.))
pause>nul&exit

::用户选择的结果会按项目序号数字（从1开始）返回在errorlevel变量中
if %errorlevel%==1 echo 你选择了a
if %errorlevel%==2 echo 你选择了b
if %errorlevel%==3 echo 你选择了c
if %errorlevel%==4 echo 你选择了d
if %errorlevel%==5 echo 你选择了e

pause