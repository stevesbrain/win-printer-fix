## Add the following

See if there's anything useful in this:

```text
Question
How do i fix Unable to install printer Operation could not be completed
Solved Answers
If the problem occurred during install printer manually error message says ‘ Unable to install printer. Operation could not be completed ‘ that means there are heavy driver conflicting so first of all we have to remove these and after that install with updated driver please follow below steps
Here are the few steps to resolve this problem, please follow these steps.
Before taking the steps please create a restore point for safer side and also do back of registry because we have to playing with registry entries, it will not harmful but do them for safer side. there no warranty  if is there any exceptional case.
Steps
How do i fix Unable to install printer Operation could not be completed
1. Start your computer in safe mode with networking
2. Delete all the files and folder out of these two location.
C:\Windows\System32\Spool\Printers
C:\Windows\System32\Spool\Drivers\w32x86
3. Open the registry . click Start, click Run, type regedit then press OK.
4. Locate the following registry key.
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows NT x86
There should only be the following two subkeys (Delete the rest), if you key will see any other subkey apart from these two keys then delte rest of them.
Only these subkeys should be there, delete rest of them (if you found any)
Drivers
Print Processors
5. Expand the Version-x subkeys, and then delete all the printer driver entries.
6. Locate the following registry key:
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors
You will see lot of subkey in this place, Delete rest of them, because these only ones should be there.
Only these subkeys should be there, delete rest of them (if you found any)
BJ Language Monitor
Local Port
PJL Language Monitor
Standard TCP/IP Port
USB Monitor
7. Check the print spooler service, is it runing or not
8. click on Start and then click on run and type here services.msc and press OK or hit enter. find the Print Spooler service, and then click Start (if it is stopped).
If the service can’t able to start, then you may have other issue, please do some printer Spooler fix it which are easily available on Microsoft KB.
8. Please make sure printer spooler service has set as automatically mode, After made started the print spooler service, restart the computer once
9. Now try to install the printer with latest driver. it’s has worked for me. i hope it would very helpful for you.This post was last updated on:2015-09-15 | First Published:2012-12-27
```

From http://archive.is/hKsNB#selection-1119.0-1541.27