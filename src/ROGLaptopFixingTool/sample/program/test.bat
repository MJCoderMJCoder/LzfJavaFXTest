@echo off 
::����CMD����������ɫΪ0a ��CMD���������� color /? �ɲ鿴��ɫ�б�
color 0a
::����CMD������ʾģʽΪ100�п� 20�и�
MODE con: COLS=100 LINES=20
echo  -------------------
echo    choice ����ʾ��
echo  -------------------
echo.
echo.
:: /c�����б� /m��ʾ���� /dĬ��ѡ�� /t�ȴ�����   /d ����� /tͬʱ����
choice  /c abcde /m "������" /d e /t 5

set str=������������ʱ �ҽ�ͣ��һ��֮ �������²��ɵ� ����ȴ��������
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

::�û�ѡ��Ľ���ᰴ��Ŀ������֣���1��ʼ��������errorlevel������
if %errorlevel%==1 echo ��ѡ����a
if %errorlevel%==2 echo ��ѡ����b
if %errorlevel%==3 echo ��ѡ����c
if %errorlevel%==4 echo ��ѡ����d
if %errorlevel%==5 echo ��ѡ����e

pause