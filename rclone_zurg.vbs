Set WshShell = CreateObject("WScript.Shell")

' Run Python script in the background
WshShell.Run "cmd /c cd /d C:\zurg && rclone.exe mount zurg: Z: --dir-cache-time 10s --network-mode", 0, False