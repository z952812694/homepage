@echo off
REM Gateway 健康检查脚本 (Windows 批处理版)
REM 功能：自动检查和恢复 Gateway 状态
REM 频率：每小时执行

set LOG_FILE=%USERPROFILE%\.openclaw\logs\gateway-health.log
set GATEWAY_PORT=18789

echo [%date% %time%] === Gateway 健康检查开始 === >> "%LOG_FILE%"

REM 检查端口
netstat -an | findstr "%GATEWAY_PORT%" >nul
if %errorlevel% equ 0 (
    echo [%date% %time%] Gateway 运行正常 (端口 %GATEWAY_PORT%) >> "%LOG_FILE%"
) else (
    echo [%date% %time%] WARNING: Gateway 未响应 >> "%LOG_FILE%"
    
    REM 尝试重启
    echo [%date% %time%] 尝试重启 Gateway... >> "%LOG_FILE%"
    openclaw gateway restart >> "%LOG_FILE%" 2>&1
    if %errorlevel% equ 0 (
        echo [%date% %time%] Gateway 重启成功 >> "%LOG_FILE%"
    ) else (
        echo [%date% %time%] ERROR: Gateway 重启失败 >> "%LOG_FILE%"
    )
)

echo [%date% %time%] === Gateway 健康检查结束 === >> "%LOG_FILE%"
