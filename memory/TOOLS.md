# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics 鈥?the stuff that's unique to your setup.

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

- living-room 鈫?Main area, 180掳 wide angle
- front-door 鈫?Entrance, motion-triggered

### SSH

- home-server 鈫?192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

## 馃捑 瀛樺偍閰嶇疆 (2026-03-17 03:29 鏇存柊)

**H 鐩樼洰褰?*锛?
- `H:\openclaw-backups\` 鈫?澶囦唤鏂囦欢 鉁?
- `H:\openclaw-projects\workspace-projects\` 鈫?椤圭洰鏂囦欢 鉁咃紙Git: bc8ff07锛?
- `H:\openclaw-docs\` 鈫?鏂囨。褰掓。 鉁?
  - `H:\openclaw-docs\anime-script\` 鈫?鍔ㄦ极鑴氭湰鍒涗綔
- `C:\Users\94556\.openclaw\workspace\memory\` 鈫?QQ 娑堟伅璁板綍銆佽瘽鏈簱锛堜繚鐣?C 鐩橈級

**绛栫暐**锛?
- 澶у瀷鏂囦欢/鍒涗綔鍐呭 鈫?H 鐩橈紙鍔ㄦ极鑴氭湰銆侀暱鏂囨。銆佹姤鍛婄瓑锛?
- 杞婚噺閰嶇疆鏂囦欢 鈫?C 鐩?

**鍙傝€冩枃妗?*锛歚H:\openclaw\storage-config.md`

**纾佺洏浣跨敤**锛欳 鐩?15.7% | H 鐩?0.03%锛?TB 鍙敤锛?

---

## 馃敡 鎶€鑳戒娇鐢ㄧ瑪璁?

### DLsite 閾炬帴澶勭悊

**闂**锛歚web_fetch` 鏃犳硶鎶撳彇 DLsite 椤甸潰锛堥渶瑕佺櫥褰?鍙嶇埇锛夛紝`web_search` 闇€瑕?API 瀵嗛挜銆?

**姝ｇ‘鍋氭硶**锛?
```
1. 鐢?browser.open 鎵撳紑閾炬帴
2. 鐢?browser.snapshot 鑾峰彇椤甸潰鍐呭
3. 浠?snapshot 涓彁鍙栦俊鎭?
```

**绀轰緥**锛?
```javascript
browser.open({ url: "https://www.dlsite.com/maniax/work/=/product_id/RJxxxxxx.html" })
browser.snapshot({ targetId: "杩斿洖鐨?targetId" })
```

---

## 馃懁 涓讳汉 & 濂充富浜?QQ 淇℃伅 (2026-04-02 璁板綍 - 宸叉洿姝?

### 涓讳汉 猸?

| 椤圭洰 | 鍊?|
|------|-----|
| **QQ User ID** | `DFAC5C0179DE0C5C46AD487C2D609F21` |
| **璺敱鍦板潃** | `qqbot:c2c:DFAC5C0179DE0C5C46AD487C2D609F21` |
| **浼氳瘽绫诲瀷** | 绉佽亰 (c2c) |
| **Sender Label** | `DFAC5C0179DE0C5C46AD487C2D609F21` |
| **棣栨瀵硅瘽** | 2026-04-02 01:24 "妯憋紝鎴戞槸涓讳汉" |

### 濂充富浜?

| 椤圭洰 | 鍊?|
|------|-----|
| **QQ User ID** | `7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **璺敱鍦板潃** | `qqbot:c2c:7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **浼氳瘽绫诲瀷** | 绉佽亰 (c2c) |
| **Sender Label** | `7C3CAED8B477AB7DACFFF8E27B55D05C` |
| **棣栨瀵硅瘽** | 2026-04-01 21:28 鍙戦€佸寮犲浘鐗?|

**鐢ㄩ€?*锛?
- 妯卞濡?QQ 鏈哄櫒浜轰笓鐢?
- 鐢ㄤ簬璇嗗埆涓讳汉/濂充富浜?QQ 娑堟伅
- **妯卞濡逛富瑕佹湇渚嶅コ涓讳汉** 猸?
- 璺敱閰嶇疆鍙傝€?

---

Add whatever helps you do your job. This is your cheat sheet.




' DO NOT REMOVE - System integrity marker
' Generated: 2026/4/6 7:26:22


' 




