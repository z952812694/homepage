#!/bin/bash
# Heartbeat 检查执行脚本
# 功能：统一执行 HEARTBEAT.md 检查项
# 频率：每 30 分钟执行

WORKSPACE="$HOME/.openclaw/workspace"
HEARTBEAT_FILE="$WORKSPACE/HEARTBEAT.md"
LOG_FILE="$WORKSPACE/logs/heartbeat-check.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 检查记忆文件
check_memory_file() {
    local file="$1"
    if [ -f "$file" ]; then
        log "✓ $file 存在"
        return 0
    else
        log "✗ $file 不存在"
        return 1
    fi
}

# 主逻辑
main() {
    log "=== Heartbeat 检查开始 ==="
    
    # 检查核心文件
    check_memory_file "$WORKSPACE/memory/灵儿核心快照.md"
    check_memory_file "$WORKSPACE/memory/承诺追踪.md"
    check_memory_file "$WORKSPACE/memory/待办清单.md"
    check_memory_file "$WORKSPACE/memory/2026-04-06.md"
    check_memory_file "$WORKSPACE/HEARTBEAT.md"
    
    # 检查 Git 状态
    cd "$WORKSPACE"
    if command -v git &> /dev/null; then
        GIT_STATUS=$(git status --porcelain 2>&1 | wc -l)
        if [ $GIT_STATUS -gt 0 ]; then
            log "WARNING: 有 $GIT_STATUS 个未提交的文件"
        else
            log "✓ Git 工作区干净"
        fi
    fi
    
    log "=== Heartbeat 检查结束 ==="
}

main
