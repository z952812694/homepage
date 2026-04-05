# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

## 💾 存储配置 (2026-03-17 03:29 更新)

**H 盘目录**：
- `H:\openclaw-backups\` → 备份文件 ✅
- `H:\openclaw-projects\workspace-projects\` → 项目文件 ✅（Git: bc8ff07）
- `H:\openclaw-docs\` → 文档归档 ✅
  - `H:\openclaw-docs\anime-script\` → 动漫脚本创作
- `C:\Users\94556\.openclaw\workspace\memory\` → QQ 消息记录、话术库（保留 C 盘）

**策略**：
- 大型文件/创作内容 → H 盘（动漫脚本、长文档、报告等）
- 轻量配置文件 → C 盘

**参考文档**：`H:\openclaw\storage-config.md`

**磁盘使用**：C 盘 15.7% | H 盘 0.03%（1TB 可用）

---

## 🔧 技能使用笔记

### DLsite 链接处理

**问题**：`web_fetch` 无法抓取 DLsite 页面（需要登录/反爬），`web_search` 需要 API 密钥。

**正确做法**：
```
1. 用 browser.open 打开链接
2. 用 browser.snapshot 获取页面内容
3. 从 snapshot 中提取信息
```

**示例**：
```javascript
browser.open({ url: "https://www.dlsite.com/maniax/work/=/product_id/RJxxxxxx.html" })
browser.snapshot({ targetId: "返回的 targetId" })
```

---

## 👤 主人 & 女主人 QQ 信息 (2026-04-02 记录 - 已更正)

### 主人 ⭐

| 项目 | 值 |
|------|-----|
| **QQ User ID** | `DFAC5C0179DE0C5C46AD487C2D609F21` |
| **路由地址** | `qqbot:c2c:DFAC5C0179DE0C5C46AD487C2D609F21` |
| **会话类型** | 私聊 (c2c) |
| **Sender Label** | `DFAC5C0179DE0C5C46AD487C2D609F21` |
| **首次对话** | 2026-04-02 01:24 "樱，我是主人" |

### 女主人

| 项目 | 值 |
|------|-----|
| **QQ User ID** | `7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **路由地址** | `qqbot:c2c:7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **会话类型** | 私聊 (c2c) |
| **Sender Label** | `7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **首次对话** | 2026-04-01 21:28 发送多张图片 |

**用途**：
- 樱妹妹 QQ 机器人专用
- 用于识别主人/女主人 QQ 消息
- **樱妹妹主要服侍女主人** ⭐
- 路由配置参考

---

Add whatever helps you do your job. This is your cheat sheet.
