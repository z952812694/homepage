Set UAC = CreateObject("Shell.Application")
UAC.ShellExecute "cmd.exe", "/c ""鍚姩 OpenClaw.bat""", "C:\Users\Admin\.openclaw\workspace\", "runas", 1

' 绂佺敤蹇€熺紪杈戞ā寮忥紙闃叉鎺у埗鍙板崱浣忥級
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Console\QuickEdit", 0, "REG_DWORD"

' 


