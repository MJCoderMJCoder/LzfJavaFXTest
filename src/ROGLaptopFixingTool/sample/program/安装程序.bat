@echo off
color 2e
echo -------------------------------------------------------------------
echo ������ʹ�õ���Armoury Crate2.3.0/2.3.5 V7���ɰ�by����������
echo -------------------------------------------------------------------
cd /d "%~dp0"
set pa=%~dp0

echo Aѡ���װ�´����������ȶ��汾�������ǹ3�ͱ������ѡ��
echo Bѡ���װ�´������������°汾������ǹ3�ͱ������ѡ��
echo Cѡ���װRogLiveService
echo Dѡ���װASUS System Control Interface V2
echo Eѡ��������а´����������
echo Fѡ��޸�9750H CPU��Ϣ����ʾ������
echo Gѡ��޸�8750H CPU��Ϣ����ʾ������
echo -------------------------------------------------------------------
choice  /c ABCDEFG /m "��ѡ��װģʽ���������Ӧ��ĸ����Сд����ν��" /d a /t 20

if %errorlevel%==1 goto function1

if %errorlevel%==2 goto function2

if %errorlevel%==3 goto function3

if %errorlevel%==4 goto function4

if %errorlevel%==5 goto function5

if %errorlevel%==6 goto function6

if %errorlevel%==7 goto function7

:function1
echo ��ѡ��װ�´����������ȶ��汾
echo -------------------------------------------------------------------
echo ����д��RogLiveService 1.0.9.6���벻Ҫ������������.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo ��װArmoury Crate Service2.3.0����
set pd=%pa%\Service\ArmouryCrate.Service.msi
start /wait %pd% /qf
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit

:function2
echo ��ѡ��װ�´������������°汾
echo -------------------------------------------------------------------
echo ��ҳ����ʾ����ǰ��Ҫ������������
echo ��ҳ����ʾ����ǰ��Ҫ������������
echo ��ҳ����ʾ����ǰ��Ҫ������������
echo ����д��RogLiveService 1.0.9.6���벻Ҫ������������.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo ��װArmoury Crate Service2.3.0����
set pd=%pa%\Service\ArmouryCrate.Service.msi
start /wait %pd% /qf
ECHO.

echo ����Armoury Crate Service��2.3.5�汾
set pc=%pa%\ASUSService.UpdatePackage.exe
%pc% /x
%pc%
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit

:function3
echo ��ѡ��װRogLiveService 
echo -------------------------------------------------------------------
echo ����д��RogLiveService 1.0.9.6���벻Ҫ������������.....
set pb=%pa%\ROGLiveService\ROGLiveServiceSetup.exe
%pb% /x
%pb%
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit

:function4
echo ��װASUS System Control Interface V2
echo -------------------------------------------------------------------
echo ���ڰ�װASUS System Control Interface V2
set pe=%pa%\ASUSSystemControlInterfaceV2_W10_64_V20140\Install.bat
call %pe%
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit

:function5
echo �������а´����������
echo -------------------------------------------------------------------
echo ���ڸ������а´����������
set pc=%pa%\ASUSService.UpdatePackage.exe
%pc% /x
%pc%
ECHO.

echo ��װ��ɣ�
pause
exit

:function6
echo ����ע��CPU��Ϣ
echo -------------------------------------------------------------------
echo ����ע��CPU��Ϣ
set pc=%pa%\Intel(9750h)\ArmouryCrateServiceCore.msi
start /wait %pc% /qf
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit

:function7
echo ����ע��CPU��Ϣ
echo -------------------------------------------------------------------
echo ����ע��CPU��Ϣ
set pc=%pa%\Intel(8750h)\ArmouryCrateServiceCore.msi
start /wait %pc% /qf
ECHO.

echo ��װ��ɣ��ǵ���������Ŷ��
pause
exit