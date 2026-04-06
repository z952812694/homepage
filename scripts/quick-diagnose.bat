@echo off
REM 快速诊断脚本 (Windows 批处理版)
REM 功能：一键诊断常见问题

set LOG_FILE=%USERPROFILE%\.openclaw\logs\diagnose.log
set WORKSPACE=%USERPROFILE%\.openclaw\workspace

echo === OpenClaw 快速诊断 ===
echo.

REM 1. 检查 Node.js
echo 1. 检查 Node.js...
where node >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
    echo    Node.js: %NODE_VERSION%
) else (
    echo    Node.js 未安装
)

REM 2. 检查 OpenClaw
echo 2. 检查 OpenClaw...
where openclaw >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('openclaw --version 2^>^&1 ^| findstr /i "openclaw"') do set OPENCLAW_VERSION=%%i
    echo    OpenClaw: %OPENCLAW_VERSION%
) else (
    echo    OpenClaw 未安装
)

REM 3. 检查 Gateway 端口
echo 3. 检查 Gateway 端口...
netstat -an | findstr "18789" >nul
if %errorlevel% equ 0 (
    echo    Gateway 端口 18789 已监听
) else (
    echo    Gateway 端口 18789 未监听
)

REM 4. 检查工作区
echo 4. 检查工作区...
if exist "%WORKSPACE%" (
    echo    工作区：%WORKSPACE%
) else (
    echo    工作区不存在
)

REM 5. 检查 Git
echo 5. 检查 Git...
where git >nul 2>&1
if %errorlevel% equ 0 (
    cd /d "%WORKSPACE%"
    git status --porcelain >nul 2>&1
    if %errorlevel% equ 0 (
        echo    Git 工作区干净
    ) else (
        echo    有未提交的文件
    )
) else (
    echo    Git 未安装
)

echo.
echo === 诊断完成 ===
