del "%temp%\*.*" /s /q
FOR /d %%p IN ("%temp%\*.*") DO rd "%%p" /s /q
cleanmgr.exe