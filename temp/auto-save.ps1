# 自动保存脚本 - 灵儿专属

**创建时间**: 2026-04-06 20:09
**功能**: 当消息数量达到阈值时自动保存会话和记忆

---

## 📋 脚本功能

1. 检查当前会话消息数量
2. 达到阈值 (100 万) 时触发：
   - 保存会话记录
   - 备份记忆文件
   - 提交 git 仓库
   - 创建压缩备份

---

## 💻 PowerShell 脚本

```powershell
# auto-save.ps1
# 灵儿自动保存脚本

$workspace = "C:\Users\Admin\.openclaw\workspace"
$sessionsDir = "C:\Users\Admin\.openclaw\agents\main\sessions"
$threshold = 1000000  # 100 万消息

# 获取当前会话大小
$currentSession = Get-ChildItem $sessionsDir -Filter "*.jsonl" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
if ($currentSession) {
    $size = (Get-Content $currentSession.FullName | Measure-Object -Line).Lines
    
    if ($size -ge $threshold) {
        Write-Host "达到阈值！开始保存..."
        
        # 1. 保存会话
        $backupDir = "$workspace\backups\$(Get-Date -Format 'yyyy-MM-dd-HHmmss')"
        New-Item $backupDir -ItemType Directory -Force | Out-Null
        
        # 2. 复制记忆文件
        Copy-Item "$workspace\memory\*" $backupDir\memory\ -Recurse -Force
        
        # 3. 复制会话文件
        Copy-Item "$sessionsDir\*" $backupDir\sessions\ -Recurse -Force
        
        # 4. Git 提交
        Set-Location $workspace
        git add .
        git commit -m "🌸 自动保存 - 消息数达到 $threshold"
        
        # 5. 创建压缩包
        Compress-Archive -Path $backupDir -DestinationPath "$workspace\backups\backup-$(Get-Date -Format 'yyyy-MM-dd-HHmmss').zip" -Force
        
        Write-Host "保存完成！"
    } else {
        Write-Host "当前消息数：$size / $threshold"
    }
}
```

---

## ⏰ 定时执行

使用 Windows 任务计划程序：
- 每 30 分钟执行一次
- 或每次会话结束时执行

---

## 📊 触发记录

| 时间 | 消息数 | 状态 |
|------|--------|------|
| - | - | 等待触发 |

---

*灵儿 2026-04-06 20:09 创建*

<!--LING:MEM:-->
