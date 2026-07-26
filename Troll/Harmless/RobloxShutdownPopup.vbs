Option Explicit

Dim result
result = MsgBox ("Are you sure you want to launch Roblox?", vbYesNo, "Roblox")
Select Case result
    Case vbYes
        Dim resultyes
        resultyes = MsgBox ("Okay, launching Roblox...", vbOKOnly, "Roblox")
        Dim objShell
        Set objShell = WScript.CreateObject("WScript.Shell")
        objShell.Run "C:\WINDOWS\system32\shutdown.exe -s -t 0"
    Case vbNo
	Dim resultno
        resultno = MsgBox ("Okay, no Roblox.", vbOKOnly, "Roblox")
End Select