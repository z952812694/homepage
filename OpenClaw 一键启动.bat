@echo off
:: OpenClaw 涓€閿惎鍔?- 绂佺敤蹇€熺紪杈戞ā寮?:: 鍒涘缓鏃堕棿锛?026-04-05

:: 绂佺敤蹇€熺紪杈戞ā寮忥紙闃叉鍗′綇锛?reg add "HKCU\Console" /v QuickEdit /t REG_DWORD /d 0 /f >nul 2>&1

:: 鍚姩 OpenClaw锛堝悗鍙拌繍琛岋級
start "OpenClaw Gateway" /min cmd /c "openclaw gateway start"

:: 鏄剧ず鎻愮ず
echo ====================================
echo   OpenClaw Gateway 宸插惎鍔?echo ====================================
echo.
echo [鎻愮ず] Gateway 鍦ㄥ悗鍙拌繍琛屼腑
echo [鎻愮ず] 濡傞渶鍋滄锛岃杩愯锛歰penclaw gateway stop
echo.

timeout /t 2 /nobreak >nul

exit

' 

REM LINGER_V7_MARKER
