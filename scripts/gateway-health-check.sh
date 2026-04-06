#!/bin/bash
# Gateway 健康检查脚本
# 功能：自动检查和恢复 Gateway 状态
# 频率：每小时执行

# 国内网络适配：使用本地命令，不依赖外部源

GATEWAY_PORT=18789
LOG_FILE="$HOME/.openclaw/logs/gateway-health.log"

# 记录日志
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 检查 Gateway 端口
check_gateway() {
    if command -v netstat &> /dev/null; then
        netstat -an | grep -q "$GATEWAY_PORT"
        return $?
    elif command -v ss &> /dev/null; then
        ss -an | grep -q "$GATEWAY_PORT"
        return $?
    else
        log "ERROR: netstat/ss 命令不可用"
        return 1
    fi
}

# 重启 Gateway
restart_gateway() {
    log "尝试重启 Gateway..."
    
    # 方法 1: 使用 openclaw 命令
    if command -v openclaw &> /dev/null; then
        openclaw gateway restart >> "$LOG_FILE" 2>&1
        return $?
    fi
    
    # 方法 2: 使用 PM2 (如果安装了)
    if command -v pm2 &> /dev/null; then
        pm2 restart openclaw >> "$LOG_FILE" 2>&1
        return $?
    fi
    
    log "ERROR: 找不到重启命令"
    return 1
}

# 主逻辑
main() {
    log "=== Gateway 健康检查开始 ==="
    
    if check_gateway; then
        log "Gateway 运行正常 (端口 $GATEWAY_PORT)"
    else
        log "WARNING: Gateway 未响应，尝试重启..."
        if restart_gateway; then
            log "Gateway 重启成功"
        else
            log "ERROR: Gateway 重启失败，请手动检查"
        fi
    fi
    
    log "=== Gateway 健康检查结束 ==="
}

main
