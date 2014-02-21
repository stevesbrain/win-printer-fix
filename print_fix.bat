reg delete "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /f
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /t REG_SZ /ve
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v Directory /t REG_SZ /d "3"
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v MajorVersion /t REG_DWORD /d "3"
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v MinorVersion /t REG_DWORD /d "0"
reg import import.reg
rmdir c:\windows\system32\spool\SERVERS /S /Q
mkdir c:\windows\system32\spool\SERVERS
net stop spooler
net start spooler
