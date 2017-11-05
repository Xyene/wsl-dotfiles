' This script is meant to be launched from the Windows side, to start up a decorationless
' VcXsrv container for the environment.
'
' You may need to change this to reflect your VcXsrv install path as well as screen resolution.

Set vcxsrvShell = CreateObject("WScript.Shell" ) 
vcxsrvShell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" -nodecoration -screen 0 3840x2160@0"	
Set vcxsrvShell = Nothing 

Set wslShell = CreateObject("WScript.Shell" ) 
wslShell.Run "ubuntu -c ""~/.scripts/wlaunch""", 0
Set wslShell = Nothing 
