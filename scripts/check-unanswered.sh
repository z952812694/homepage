#!/bin/bash
# 未回复消息检查脚本
# 功能：检测是否有未回复的消息
# 频率：每 30 分钟执行

LOG_FILE="$HOME/.openclaw/logs/unanswered-check.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 检查会话文件
check_sessions() {
    SESSIONS_DIR="$HOME/.openclaw/agents/main/sessions"
    
    if [ ! -d "$SESSIONS_DIR" ]; then
        log "ERROR: 会话目录不存在"
        return 1
    fi
    
    # 检查最新的会话文件
    LATEST_SESSION=$(ls -t "$SESSIONS_DIR"/*.jsonl 2>/dev/null | head -1)
    
    if [ -z "$LATEST_SESSION" ]; then
        log "INFO: 没有会话文件"
        return 0
    fi
    
    # 获取最后更新时间
    LAST_MODIFIED=$(stat -c %Y "$LATEST_SESSION" 2>/dev/null || stat -f %m "$LATEST_SESSION" 2>/dev/null)
    CURRENT_TIME=$(date +%s)
    TIME_DIFF=$((CURRENT_TIME - LAST_MODIFIED))
    
    # 如果超过 30 分钟未更新，记录警告
    if [ $TIME_DIFF -gt 1800 ]; then
        log "WARNING: 会话已超过 30 分钟未更新 ($(($TIME_DIFF / 60)) 分钟前)"
        return 1
    else
        log "INFO: 会话正常 (最后更新：$((TIME_DIFF / 60)) 分钟前)"
        return 0
    fi
}

# 主逻辑
main() {
    log "=== 未回复消息检查开始 ==="
    check_sessions
    log "=== 未回复消息检查结束 ==="
}

main
