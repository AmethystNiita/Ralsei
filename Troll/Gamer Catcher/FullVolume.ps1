$ErrorActionPreference = "SilentlyContinue"
$ProgressPreference = "SilentlyContinue"

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

$null = [Volume]::SendMessageW($HWND_BROADCAST, $WM_APPCOMMAND, [IntPtr]::Zero, [IntPtr]($APPCOMMAND_VOLUME_UP -shl 16))