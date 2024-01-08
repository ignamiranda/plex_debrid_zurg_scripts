Set WshShell = CreateObject("WScript.Shell")

' Run Python script in the background
WshShell.Run "cmd /c cd /d C:\zurg && zurg", 0, False