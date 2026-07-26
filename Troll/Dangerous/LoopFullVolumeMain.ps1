# popup_volume_youtube.ps1

# Show a popup message
Add-Type -AssemblyName Microsoft.VisualBasic
[Microsoft.VisualBasic.Interaction]::MsgBox("The server is not ready to handle the request.(Error Code:503)", "OKOnly,Information", "Authentication Failed")

# Add-type for sending volume commands
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Volume {
    [DllImport("user32.dll")]
    public static extern int SendMessageW(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);
}
"@

$HWND_BROADCAST = [IntPtr]0xffff
$WM_APPCOMMAND = 0x319
$APPCOMMAND_VOLUME_UP = 0x0a

# Raise volume 50 steps
for ($i = 0; $i -lt 50; $i++) {
    [Volume]::SendMessageW($HWND_BROADCAST, $WM_APPCOMMAND, [IntPtr]::Zero, [IntPtr]($APPCOMMAND_VOLUME_UP -shl 16))
    Start-Sleep -Milliseconds 20
}

# Open YouTube in default browser
Start-Process "C:\Program Files\Google\Chrome\Application\chrome.exe" https://www.youtube.com/watch?v=dQw4w9WgXcQ
