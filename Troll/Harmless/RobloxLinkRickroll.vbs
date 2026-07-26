Dim resp
resp = MsgBox("An unexpected error occurred and Roblox needs to quit. We're sorry!", vbOKOnly, "Roblox")

Set fso = CreateObject("Scripting.FileSystemObject")
Set sh = CreateObject("WScript.Shell")

chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
url = "https://www.youtube.com/watch?v=xvFZjo5PgG0"

If fso.FileExists(chromePath) Then
  sh.Run """" & chromePath & """" & " " & url, 1, False
Else
  sh.Run "cmd /c start """" """ & url & """", 1, False
End If