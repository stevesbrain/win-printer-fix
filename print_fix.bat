printui /dd /m "Brother HL-4040CN series" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "HP LaserJet 400 M401 PCL 6" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "HP LaserJet 500 color M551 PCL6" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "HP Universal Printing PCL 6 (v5.6.0)" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "RICOH Aficio MP 5001 PCL 6" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "RICOH Aficio MP C5501A PCL 6" /h "x86" /v "Type 3 - User Mode"
printui /dd /m "RICOH Aficio MP C5502A PCL 6" /h "x86" /v "Type 3 - User Mode"
::printui /dd /m "No Exist" /h "x86" /v "Type 3 - User Mode"
reg delete "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /f
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /t REG_SZ /ve
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v Directory /t 

REG_SZ /d "3"
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v MajorVersion /t 

REG_DWORD /d "3"
::reg add "hklm\system\currentcontrolset\control\print\environments\Windows nt x86\drivers\version-3" /v MinorVersion /t 

REG_DWORD /d "0"
reg import import.reg
rmdir c:\windows\system32\spool\SERVERS /S /Q
mkdir c:\windows\system32\spool\SERVERS
net stop spooler
net start spooler
shutdown /r /t 0