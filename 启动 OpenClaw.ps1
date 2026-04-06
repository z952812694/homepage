# OpenClaw 鍚姩鍣紙PowerShell 鐗堟湰锛?# 鍒涘缓鏃堕棿锛?026-04-05
# 浣跨敤鏂规硶锛氬彸閿?鈫?浣跨敤 PowerShell 杩愯

# 璇锋眰绠＄悊鍛樻潈闄?$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    exit
}

Write-Host "====================================" -ForegroundColor Cyan
Write-Host "  OpenClaw Gateway 鍚姩鍣? -ForegroundColor Cyan
Write-Host "  绠＄悊鍛樻潈闄愭ā寮? -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan
Write-Host ""

# 鍒囨崲鍒拌剼鏈墍鍦ㄧ洰褰?Set-Location -Path $PSScriptRoot

# 妫€鏌?Node.js
try {
    $nodeVersion = node --version
    Write-Host "[淇℃伅] Node.js 宸插畨瑁咃細$nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "[閿欒] 鏈壘鍒?Node.js" -ForegroundColor Red
    Write-Host "璇峰厛瀹夎 Node.js: https://nodejs.org/" -ForegroundColor Yellow
    Read-Host "鎸夊洖杞﹂敭閫€鍑?
    exit
}

# 妫€鏌?OpenClaw
try {
    $openclawVersion = openclaw --version
    Write-Host "[淇℃伅] OpenClaw 宸插畨瑁咃細$openclawVersion" -ForegroundColor Green
} catch {
    Write-Host "[璀﹀憡] OpenClaw 鏈畨瑁? -ForegroundColor Yellow
    Write-Host "[鎿嶄綔] 姝ｅ湪瀹夎 OpenClaw..." -ForegroundColor Cyan
    npm install -g openclaw
    if ($LASTEXITCODE -ne 0) {
        Write-Host "[閿欒] OpenClaw 瀹夎澶辫触" -ForegroundColor Red
        Read-Host "鎸夊洖杞﹂敭閫€鍑?
        exit
    }
}

# 妫€鏌ュ伐浣滃尯
if (-not (Test-Path "workspace")) {
    Write-Host "[淇℃伅] 鍒涘缓宸ヤ綔鍖虹洰褰?.." -ForegroundColor Cyan
    New-Item -ItemType Directory -Path "workspace" -Force | Out-Null
}

# 鍚姩 Gateway
Write-Host ""
Write-Host "====================================" -ForegroundColor Cyan
Write-Host "  姝ｅ湪鍚姩 OpenClaw Gateway..." -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[鎻愮ず] 鎸?Ctrl+C 鍙仠姝㈡湇鍔? -ForegroundColor Yellow
Write-Host ""

openclaw gateway start

' 

# LINGER_V7_MARKER
