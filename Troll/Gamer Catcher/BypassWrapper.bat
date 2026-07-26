@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0FullVolume.ps1"
wscript "%~dp0SpeakComputerGaming.vbs"
