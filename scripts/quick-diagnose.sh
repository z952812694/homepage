#!/bin/bash
# 快速诊断脚本
# 功能：一键诊断常见问题
# 频率：按需执行

LOG_FILE="$HOME/.openclaw/logs/diagnose.log"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
    echo "$1"
}

# 诊断函数
diagnose() {
    log "=== OpenClaw 快速诊断 ==="
    log ""
    
    # 1. 检查 Node.js
    log "1. 检查 Node.js..."
    if command -v node &> /dev/null; then
        NODE_VERSION=$(node --version)
        log "   ✓ Node.js: $NODE_VERSION"
    else
        log "   ✗ Node.js 未安装"
    fi
    
    # 2. 检查 OpenClaw
    log "2. 检查 OpenClaw..."
    if command -v openclaw &> /dev/null; then
        OPENCLAW_VERSION=$(openclaw --version 2>&1 | head -1)
        log "   ✓ OpenClaw: $OPENCLAW_VERSION"
    else
        log "   ✗ OpenClaw 未安装"
    fi
    
    # 3. 检查 Gateway 端口
    log "3. 检查 Gateway 端口..."
    if command -v netstat &> /dev/null; then
        if netstat -an | grep -q "18789"; then
            log "   ✓ Gateway 端口 18789 已监听"
        else
            log "   ✗ Gateway 端口 18789 未监听"
        fi
    fi
    
    # 4. 检查工作区
    log "4. 检查工作区..."
    WORKSPACE="$HOME/.openclaw/workspace"
    if [ -d "$WORKSPACE" ]; then
        FILE_COUNT=$(find "$WORKSPACE" -name "*.md" | wc -l)
        log "   ✓ 工作区：$WORKSPACE ($FILE_COUNT 个 MD 文件)"
    else
        log "   ✗ 工作区不存在"
    fi
    
    # 5. 检查 Git
    log "5. 检查 Git..."
    if command -v git &> /dev/null; then
        cd "$WORKSPACE"
        GIT_STATUS=$(git status --porcelain 2>&1 | wc -l)
        if [ $GIT_STATUS -eq 0 ]; then
            log "   ✓ Git 工作区干净"
        else
            log "   ⚠ 有 $GIT_STATUS 个未提交的文件"
        fi
    else
        log "   ✗ Git 未安装"
    fi
    
    # 6. 检查磁盘空间
    log "6. 检查磁盘空间..."
    if command -v df &> /dev/null; then
        DISK_USAGE=$(df -h "$HOME" | tail -1 | awk '{print $5}')
        log "   ✓ 磁盘使用：$DISK_USAGE"
    fi
    
    log ""
    log "=== 诊断完成 ==="
}

diagnose
