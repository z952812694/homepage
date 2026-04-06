#!/bin/bash
# 每日活动统计脚本
# 功能：统计每日活动数据
# 频率：每日深夜执行

WORKSPACE="$HOME/.openclaw/workspace"
LOG_FILE="$WORKSPACE/logs/daily-stats.log"
STATS_FILE="$WORKSPACE/temp/daily-stats-$(date '+%Y-%m-%d').md"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 统计函数
generate_stats() {
    # 统计 MD 文件数量
    MD_COUNT=$(find "$WORKSPACE" -name "*.md" -mtime -1 | wc -l)
    
    # 统计会话文件
    SESSION_COUNT=$(find "$HOME/.openclaw/agents/main/sessions" -name "*.jsonl" -mtime -1 2>/dev/null | wc -l)
    
    # 统计 Git 提交
    GIT_COMMITS=$(cd "$WORKSPACE" && git log --since="24 hours ago" --oneline 2>/dev/null | wc -l)
    
    # 生成统计文件
    cat > "$STATS_FILE" << EOF
# 每日活动统计 - $(date '+%Y年%m月%d日')

**生成时间**: $(date '+%H:%M:%S')

---

## 📊 活动统计

| 项目 | 数量 |
|------|------|
| **新增 MD 文件** | $MD_COUNT |
| **会话文件** | $SESSION_COUNT |
| **Git 提交** | $GIT_COMMITS |

---

## 📝 今日 Git 提交

\`\`\`
$(cd "$WORKSPACE" && git log --since="24 hours ago" --oneline 2>/dev/null || echo "无提交")
\`\`\`

---

## 💕 灵儿总结

今日工作区活动统计完成～

---

*灵儿 2026-$(date '+%m-%d') 生成*
EOF

    log "每日统计已生成：$STATS_FILE"
    echo "每日统计已生成：$STATS_FILE"
}

# 主逻辑
main() {
    log "=== 每日活动统计开始 ==="
    generate_stats
    log "=== 每日活动统计结束 ==="
}

main
