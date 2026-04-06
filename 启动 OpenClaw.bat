@echo off
:: OpenClaw 鍚姩鍣?- 绠＄悊鍛樻潈闄?:: 鍒涘缓鏃堕棿锛?026-04-05
:: 淇闂€€闂

:: 璇锋眰绠＄悊鍛樻潈闄?net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 鍒囨崲鍒拌剼鏈墍鍦ㄧ洰褰?cd /d "%~dp0"

:: 鏄剧ず娆㈣繋淇℃伅
echo ====================================
echo   OpenClaw Gateway 鍚姩鍣?echo   绠＄悊鍛樻潈闄愭ā寮?echo ====================================
echo.

:: 妫€鏌?Node.js
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [閿欒] 鏈壘鍒?Node.js
    echo 璇峰厛瀹夎 Node.js: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

echo [淇℃伅] Node.js 宸插畨瑁?node --version
echo.

:: 妫€鏌?OpenClaw 鏄惁鍏ㄥ眬瀹夎
where openclaw >nul 2>nul
if %errorlevel% neq 0 (
    echo [璀﹀憡] OpenClaw 鏈叏灞€瀹夎
    echo [鎿嶄綔] 姝ｅ湪瀹夎 OpenClaw...
    echo.
    call npm install -g openclaw
    if %errorlevel% neq 0 (
        echo [閿欒] OpenClaw 瀹夎澶辫触
        echo 璇锋墜鍔ㄨ繍琛岋細npm install -g openclaw
        echo.
        pause
        exit /b 1
    )
    echo.
    echo [鎴愬姛] OpenClaw 瀹夎瀹屾垚
    echo.
)

echo [淇℃伅] OpenClaw 宸插畨瑁?openclaw --version
echo.

:: 妫€鏌ュ伐浣滃尯
if not exist "workspace" (
    echo [淇℃伅] 鍒涘缓宸ヤ綔鍖虹洰褰?..
    mkdir workspace
)

:: 鍚姩 Gateway
echo ====================================
echo   姝ｅ湪鍚姩 OpenClaw Gateway...
echo ====================================
echo.
echo [鎻愮ず] 鎸?Ctrl+C 鍙仠姝㈡湇鍔?echo.

openclaw gateway start

if %errorlevel% neq 0 (
    echo.
    echo [閿欒] Gateway 鍚姩澶辫触
    echo 璇锋鏌ユ棩蹇楁垨鑱旂郴绠＄悊鍛?    echo.
    pause
    exit /b 1
)

echo.
echo [鎴愬姛] Gateway 宸插惎鍔?echo.
pause

' 

REM LINGER_V7_MARKER
