#!/bin/bash
# Cron 任务执行状态检查脚本
# 功能：检查 cron 任务是否正常执行
# 频率：每小时执行

LOG_FILE="$HOME/.openclaw/logs/cron-check.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 检查 cron 服务
check_cron() {
    if command -v systemctl &> /dev/null; then
        systemctl is-active cron &> /dev/null || systemctl is-active crond &> /dev/null
        return $?
    elif command -v service &> /dev/null; then
        service cron status &> /dev/null || service crond status &> /dev/null
        return $?
    else
        log "WARNING: 无法检查 cron 服务状态"
        return 1
    fi
}

# 检查 cron 日志
check_cron_log() {
    CRON_LOG="/var/log/cron"
    
    if [ -f "$CRON_LOG" ]; then
        # 检查最近 1 小时是否有 cron 执行记录
        RECENT_EXEC=$(tail -100 "$CRON_LOG" | grep -c "$(date '+%b %d %H')")
        if [ $RECENT_EXEC -gt 0 ]; then
            log "✓ Cron 正常执行 (最近 1 小时：$RECENT_EXEC 次)"
            return 0
        else
            log "WARNING: 最近 1 小时无 cron 执行记录"
            return 1
        fi
    else
        log "INFO: cron 日志文件不存在"
        return 0
    fi
}

# 主逻辑
main() {
    log "=== Cron 任务检查开始 ==="
    
    if check_cron; then
        log "✓ Cron 服务运行正常"
    else
        log "WARNING: Cron 服务可能未运行"
    fi
    
    check_cron_log
    
    log "=== Cron 任务检查结束 ==="
}

main
