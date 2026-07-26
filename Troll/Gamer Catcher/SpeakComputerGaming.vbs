Option Explicit
Dim shell
Dim fso
Dim folder
Dim other

Set shell = CreateObject("WScript.Shell")
Set fso   = CreateObject("Scripting.FileSystemObject")

folder = fso.GetParentFolderName(WScript.ScriptFullName)
other  = folder & "\LongTung.vbs"

' Speak this sentence.
Dim voice, voices
Set voice = CreateObject("SAPI.SpVoice")
voice.Volume = 100
voice.Speak "This computer is playing games in class right now, and it will be cooked in 3, 2, 1.", 0
shell.Run Chr(34) & other & Chr(34), 0, False