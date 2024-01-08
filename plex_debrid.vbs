Set WshShell = CreateObject("WScript.Shell")

' Run Python script in the background
WshShell.Run "cmd /c cd /d C:\plex_debrid && git pull && python .\main.py", 0, False