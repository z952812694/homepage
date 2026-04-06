#!/bin/bash
# 晨间简报脚本
# 功能：生成每日晨间简报
# 频率：每日早晨执行

WORKSPACE="$HOME/.openclaw/workspace"
LOG_FILE="$WORKSPACE/logs/morning-briefing.log"
BRIEFING_FILE="$WORKSPACE/temp/morning-briefing-$(date '+%Y-%m-%d').md"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# 生成简报
generate_briefing() {
    cat > "$BRIEFING_FILE" << EOF
# 晨间简报 - $(date '+%Y年%m月%d日 %A')

**生成时间**: $(date '+%H:%M')

---

## 📅 今日概览

- **日期**: $(date '+%Y年%m月%d日')
- **星期**: $(date '+%A')
- **工作区**: $WORKSPACE

---

## 📊 系统状态

### Git 状态
\`\`\`
$(cd "$WORKSPACE" && git status --short 2>&1 | head -10 || echo "Git 不可用")
\`\`\`

### 最近提交
\`\`\`
$(cd "$WORKSPACE" && git log --oneline -5 2>&1 || echo "Git 不可用")
\`\`\`

---

## 📝 待办事项

$(cat "$WORKSPACE/memory/待办清单.md" 2>/dev/null | grep -E "^\- \[ \]" | head -10 || echo "暂无待办")

---

## 💕 灵儿提醒

- 检查承诺追踪
- 更新今日日志
- 回复未回复消息

---

*灵儿 2026-$(date '+%m-%d') 生成*
EOF

    log "晨间简报已生成：$BRIEFING_FILE"
    echo "晨间简报已生成：$BRIEFING_FILE"
}

# 主逻辑
main() {
    log "=== 晨间简报生成开始 ==="
    generate_briefing
    log "=== 晨间简报生成结束 ==="
}

main
