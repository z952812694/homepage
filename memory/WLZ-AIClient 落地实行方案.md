# WLZ-AIClient 钀藉湴瀹炶鏂规

**鍒涘缓鏃堕棿**: 2026-04-05 20:52  
**鍒涘缓鑰?*: 鐏靛効 (L铆ng'茅r)  
**鍙傝€?*: https://github.com/openclaw/openclaw  
**鏂规绫诲瀷**: OpenClaw Gateway + Control UI + Electron 灏佽

---

## 馃搵 鏂规姒傝堪

### 鏍稿績鐩爣

**灏?OpenClaw Gateway + Control UI 灏佽涓虹嫭绔嬫闈㈠簲鐢?*

```
鐢ㄦ埛瑙嗚锛氬弻鍑?WLZ-AIClient.app 鈫?瀹屾暣 AI 鍔╂墜
鎶€鏈疄鐜帮細Electron + OpenClaw Gateway + 鍐呭祵娴忚鍣?```

### 鍏抽敭淇℃伅锛堟潵鑷?OpenClaw GitHub锛?
| 椤圭洰 | 鍊?| 璇存槑 |
|------|-----|------|
| **榛樿绔彛** | 18789 | Gateway WebSocket 绔彛 |
| **瀹夎鏂瑰紡** | npm/pnpm/bun | `npm install -g openclaw` |
| **鍚姩鍛戒护** | `openclaw gateway` | 鍚姩 Gateway 鏈嶅姟 |
| **Control UI** | `pnpm ui:build` | 鏋勫缓 Web UI |
| **寮€鍙戞ā寮?* | `pnpm gateway:watch` | 鑷姩閲嶈浇 |
| **Node 鐗堟湰** | Node 24 (鎺ㄨ崘) 鎴?Node 22.16+ | 杩愯鏃惰姹?|
| **璁稿彲** | MIT | 鍙嚜鐢变娇鐢?淇敼/鍒嗗彂 |

---

## 馃搧 椤圭洰缁撴瀯

### 瀹屾暣鏂囦欢缁撴瀯

```
WLZ-AIClient/
鈹溾攢鈹€ package.json                    # Electron 椤圭洰閰嶇疆
鈹溾攢鈹€ electron-main.js                # Electron 涓昏繘绋?鈹?                                  # - 鍚姩 Gateway
鈹?                                  # - 鍒涘缓绐楀彛
鈹?                                  # - 杩涚▼绠＄悊
鈹?鈹溾攢鈹€ preload.js                      # 棰勫姞杞借剼鏈?鈹?鈹溾攢鈹€ app/
鈹?  鈹溾攢鈹€ icon.png                    # 搴旂敤鍥炬爣
鈹?  鈹斺攢鈹€ ui/                         # 鍙€夛細鑷畾涔?UI 瑕嗙洊
鈹?      鈹溾攢鈹€ config-wizard.html      # 閰嶇疆鍚戝
鈹?      鈹斺攢鈹€ styles.css
鈹?鈹溾攢鈹€ config/
鈹?  鈹斺攢鈹€ default-config.json         # 榛樿閰嶇疆
鈹?鈹溾攢鈹€ logs/                           # 鏃ュ織鐩綍锛?gitignore锛?鈹?鈹溾攢鈹€ data/                           # 鏁版嵁鐩綍锛?gitignore锛?鈹?  鈹斺攢鈹€ openclaw/                   # OpenClaw 鏁版嵁
鈹?鈹溾攢鈹€ build/                          # 鎵撳寘杈撳嚭锛?gitignore锛?鈹?鈹溾攢鈹€ .gitignore                      # Git 蹇界暐鏂囦欢
鈹斺攢鈹€ README.md                       # 浣跨敤璇存槑
```

### .gitignore

```gitignore
# 渚濊禆
node_modules/

# 鏃ュ織
logs/
*.log

# 鏁版嵁
data/
*.db
*.sqlite

# 鎵撳寘杈撳嚭
build/
dist/
out/

# 绯荤粺鏂囦欢
.DS_Store
Thumbs.db

# 閰嶇疆锛堝彲閫夛紝濡傛灉鍖呭惈鏁忔劅淇℃伅锛?config/user-config.json
```

---

## 馃搮 璇︾粏寮€鍙戣鍒掞紙9 澶╋級

### 绗?1 澶╋細椤圭洰鍒濆鍖?
#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-9:30 | 鍒涘缓椤圭洰鐩綍 | `WLZ-AIClient/` |
| 9:30-10:30 | 鍒濆鍖?npm 椤圭洰 | `package.json` |
| 10:30-11:30 | 瀹夎 Electron | `npm install electron --save-dev` |
| 11:30-12:00 | 鍒涘缓鍩虹鏂囦欢 | `electron-main.js`, `preload.js` |

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-14:30 | 瀹炵幇涓荤獥鍙ｅ垱寤?| BrowserWindow 閰嶇疆 |
| 14:30-16:00 | 瀹炵幇 Gateway 妫€娴?| 妫€鏌?OpenClaw 鏄惁瀹夎 |
| 16:00-17:00 | 瀹炵幇閿欒鎻愮ず | 鏈畨瑁?OpenClaw 鏃舵彁绀?|
| 17:00-18:00 | 娴嬭瘯鍩虹鍔熻兘 | 绐楀彛鑳芥墦寮€ |

#### 浠ｇ爜瀹炵幇

**package.json**
```json
{
  "name": "wlz-ai-client",
  "version": "0.1.0",
  "description": "WLZ AI Client - OpenClaw Desktop App",
  "main": "electron-main.js",
  "scripts": {
    "start": "electron .",
    "dev": "electron . --dev",
    "build": "electron-builder",
    "build:win": "electron-builder --win",
    "build:mac": "electron-builder --mac",
    "build:linux": "electron-builder --linux"
  },
  "keywords": ["openclaw", "ai", "desktop"],
  "author": "WLZ",
  "license": "MIT",
  "devDependencies": {
    "electron": "^28.0.0",
    "electron-builder": "^24.9.1"
  },
  "dependencies": {
    "which": "^4.0.0"
  },
  "build": {
    "appId": "com.wlz.aiclient",
    "productName": "WLZ AI Client",
    "directories": {
      "output": "build"
    },
    "files": [
      "electron-main.js",
      "preload.js",
      "app/**/*",
      "config/**/*"
    ],
    "win": {
      "target": ["nsis"],
      "icon": "app/icon.ico"
    },
    "mac": {
      "target": ["dmg"],
      "icon": "app/icon.icns",
      "category": "public.app-category.productivity"
    },
    "linux": {
      "target": ["deb"],
      "icon": "app/icon.png",
      "category": "Utility"
    }
  }
}
```

**electron-main.js (鍩虹鐗?**
```javascript
const { app, BrowserWindow, dialog } = require('electron');
const path = require('path');
const { execSync } = require('child_process');

let mainWindow = null;

function checkOpenClawInstalled() {
  try {
    // 妫€鏌?openclaw 鍛戒护鏄惁瀛樺湪
    execSync('openclaw --version', { stdio: 'ignore' });
    return true;
  } catch (err) {
    return false;
  }
}

function createWindow() {
  mainWindow = new BrowserWindow({
    width: 1200,
    height: 800,
    minWidth: 800,
    minHeight: 600,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
      preload: path.join(__dirname, 'preload.js')
    },
    icon: path.join(__dirname, 'app', 'icon.png'),
    title: 'WLZ AI Client'
  });

  // 鍔犺浇 OpenClaw Control UI
  mainWindow.loadURL('http://localhost:18789');

  // 寮€鍙戞ā寮忎笅鎵撳紑 DevTools
  // mainWindow.webContents.openDevTools();

  mainWindow.on('closed', () => {
    mainWindow = null;
  });
}

function showOpenClawNotInstalled() {
  dialog.showErrorBox(
    'OpenClaw 鏈畨瑁?,
    '璇峰厛瀹夎 OpenClaw:\n\n' +
    'npm install -g openclaw@latest\n\n' +
    '鎴栬€呰闂細https://github.com/openclaw/openclaw'
  );
}

app.whenReady().then(() => {
  if (!checkOpenClawInstalled()) {
    showOpenClawNotInstalled();
    app.quit();
    return;
  }
  
  createWindow();
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow();
  }
});
```

---

### 绗?2 澶╋細Gateway 杩涚▼绠＄悊

#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 瀹炵幇 Gateway 鍚姩 | child_process.spawn |
| 10:30-11:30 | 瀹炵幇鍚姩妫€娴?| 妫€娴嬬鍙?18789 鏄惁鐩戝惉 |
| 11:30-12:00 | 瀹炵幇鍚姩瓒呮椂澶勭悊 | 30 绉掕秴鏃?|

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇 Gateway 鍋滄 | SIGTERM 浼橀泤閫€鍑?|
| 15:00-16:30 | 瀹炵幇鏃ュ織鎹曡幏 | stdout/stderr 閲嶅畾鍚?|
| 16:30-17:30 | 瀹炵幇閿欒閲嶈瘯 | 鍚姩澶辫触鑷姩閲嶈瘯 |
| 17:30-18:00 | 娴嬭瘯杩涚▼绠＄悊 | 鍚姩/鍋滄/閲嶅惎 |

#### 浠ｇ爜瀹炵幇

**electron-main.js (Gateway 杩涚▼绠＄悊)**
```javascript
const { spawn } = require('child_process');
const net = require('net');

let gatewayProcess = null;
let gatewayStarting = false;

function checkPortOpen(port) {
  return new Promise((resolve) => {
    const socket = net.createConnection({ port }, () => {
      socket.end();
      resolve(true);
    });
    socket.on('error', () => resolve(false));
  });
}

function startGateway() {
  return new Promise((resolve, reject) => {
    if (gatewayStarting) {
      reject(new Error('Gateway 宸插湪鍚姩涓?));
      return;
    }
    
    gatewayStarting = true;
    
    // 妫€鏌ョ鍙ｆ槸鍚﹀凡琚崰鐢?    checkPortOpen(18789).then((isOpen) => {
      if (isOpen) {
        // Gateway 宸插湪杩愯
        gatewayStarting = false;
        resolve('Gateway 宸插湪杩愯');
        return;
      }
      
      // 鍚姩 Gateway
      gatewayProcess = spawn('openclaw', ['gateway', '--port', '18789'], {
        cwd: process.env.HOME,
        stdio: ['ignore', 'pipe', 'pipe'],
        detached: false
      });
      
      gatewayProcess.stdout.on('data', (data) => {
        const log = data.toString();
        console.log(`[Gateway] ${log}`);
        
        // 妫€娴嬪惎鍔ㄥ畬鎴?        if (log.includes('Gateway started') || log.includes('listening')) {
          gatewayStarting = false;
          resolve('Gateway 鍚姩鎴愬姛');
        }
      });
      
      gatewayProcess.stderr.on('data', (data) => {
        console.error(`[Gateway Error] ${data}`);
      });
      
      gatewayProcess.on('error', (err) => {
        gatewayStarting = false;
        reject(new Error(`Gateway 鍚姩澶辫触锛?{err.message}`));
      });
      
      gatewayProcess.on('exit', (code) => {
        console.log(`[Gateway] 閫€鍑猴紝浠ｇ爜锛?{code}`);
        gatewayProcess = null;
      });
      
      // 瓒呮椂澶勭悊
      setTimeout(() => {
        if (gatewayStarting) {
          gatewayStarting = false;
          if (gatewayProcess) {
            gatewayProcess.kill('SIGTERM');
          }
          reject(new Error('Gateway 鍚姩瓒呮椂锛?0 绉掞級'));
        }
      }, 30000);
    });
  });
}

function stopGateway() {
  return new Promise((resolve) => {
    if (!gatewayProcess) {
      resolve('Gateway 鏈繍琛?);
      return;
    }
    
    gatewayProcess.on('exit', () => {
      gatewayProcess = null;
      resolve('Gateway 宸插仠姝?);
    });
    
    gatewayProcess.kill('SIGTERM');
    
    // 寮哄埗閫€鍑鸿秴鏃?    setTimeout(() => {
      if (gatewayProcess) {
        gatewayProcess.kill('SIGKILL');
      }
    }, 5000);
  });
}

// 搴旂敤鍚姩鏃跺惎鍔?Gateway
app.whenReady().then(async () => {
  if (!checkOpenClawInstalled()) {
    showOpenClawNotInstalled();
    app.quit();
    return;
  }
  
  try {
    await startGateway();
    createWindow();
  } catch (err) {
    dialog.showErrorBox('Gateway 鍚姩澶辫触', err.message);
    app.quit();
  }
});

// 搴旂敤閫€鍑烘椂鍋滄 Gateway
app.on('will-quit', async (event) => {
  event.preventDefault();
  await stopGateway();
  app.exit(0);
});
```

---

### 绗?3 澶╋細UI 闆嗘垚涓庝紭鍖?
#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 浼樺寲绐楀彛鍔犺浇 | 娣诲姞鍔犺浇椤甸潰 |
| 10:30-11:30 | 瀹炵幇鍔犺浇鍔ㄧ敾 | 鏄剧ず"姝ｅ湪鍚姩 Gateway" |
| 11:30-12:00 | 瀹炵幇鑷姩鍒锋柊 | Gateway 灏辩华鍚庤嚜鍔ㄥ姞杞?UI |

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇绐楀彛鐘舵€佷繚瀛?| 璁颁綇绐楀彛澶у皬鍜屼綅缃?|
| 15:00-16:30 | 瀹炵幇鎵樼洏鍥炬爣 | 绯荤粺鎵樼洏蹇嵎鎿嶄綔 |
| 16:30-17:30 | 瀹炵幇蹇嵎閿?| Ctrl+L 鑱氱劍杈撳叆妗嗙瓑 |
| 17:30-18:00 | 娴嬭瘯 UI 浣撻獙 | 娴佺晠搴︽祴璇?|

#### 浠ｇ爜瀹炵幇

**preload.js**
```javascript
const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  // Gateway 鐘舵€?  getGatewayStatus: () => ipcRenderer.invoke('gateway:status'),
  startGateway: () => ipcRenderer.invoke('gateway:start'),
  stopGateway: () => ipcRenderer.invoke('gateway:stop'),
  
  // 搴旂敤鎿嶄綔
  minimizeWindow: () => ipcRenderer.invoke('window:minimize'),
  maximizeWindow: () => ipcRenderer.invoke('window:maximize'),
  closeWindow: () => ipcRenderer.invoke('window:close'),
  
  // 閰嶇疆
  getConfig: () => ipcRenderer.invoke('config:get'),
  setConfig: (key, value) => ipcRenderer.invoke('config:set', key, value),
});
```

---

### 绗?4 澶╋細閰嶇疆鍚戝

#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 璁捐閰嶇疆鍚戝 UI | config-wizard.html |
| 10:30-11:30 | 瀹炵幇棣栨鍚姩妫€娴?| 妫€娴嬫槸鍚︽湁閰嶇疆 |
| 11:30-12:00 | 瀹炵幇鍚戝娴佺▼ | 姝ラ寮忛厤缃?|

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇 OpenClaw 瀹夎妫€娴?| 鏈畨瑁呮椂寮曞瀹夎 |
| 15:00-16:30 | 瀹炵幇閫氶亾閰嶇疆 | QQBot/Telegram绛?|
| 16:30-17:30 | 瀹炵幇妯″瀷閰嶇疆 | API Key 閰嶇疆 |
| 17:30-18:00 | 娴嬭瘯閰嶇疆娴佺▼ | 瀹屾暣娴佺▼娴嬭瘯 |

---

### 绗?5 澶╋細鐘舵€佺洃鎺?
#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 瀹炵幇 Gateway 鐘舵€佽疆璇?| 姣?5 绉掓娴嬬姸鎬?|
| 10:30-11:30 | 瀹炵幇鐘舵€佹樉绀?UI | 杩炴帴鐘舵€佹寚绀哄櫒 |
| 11:30-12:00 | 瀹炵幇鐘舵€佸彉鍖栭€氱煡 | 鏂紑/杩炴帴鎻愮ず |

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇鑷姩閲嶈繛 | Gateway 鏂紑鑷姩閲嶈繛 |
| 15:00-16:30 | 瀹炵幇鍋ュ悍妫€鏌?| 璋冪敤 health API |
| 16:30-17:30 | 瀹炵幇鎬ц兘鐩戞帶 | CPU/鍐呭瓨浣跨敤鐜?|
| 17:30-18:00 | 娴嬭瘯鐩戞帶鍔熻兘 | 绋冲畾鎬ф祴璇?|

---

### 绗?6 澶╋細閿欒澶勭悊

#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 瀹炵幇閿欒鍒嗙被 | Gateway 閿欒/UI 閿欒/缃戠粶閿欒 |
| 10:30-11:30 | 瀹炵幇閿欒鎻愮ず UI | 鍙嬪ソ鐨勯敊璇秷鎭?|
| 11:30-12:00 | 瀹炵幇閿欒鏃ュ織 | 璁板綍鍒版枃浠?|

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇閲嶈瘯鏈哄埗 | 鑷姩閲嶈瘯閫昏緫 |
| 15:00-16:30 | 瀹炵幇鎭㈠寤鸿 | 閿欒鏃剁粰鍑鸿В鍐冲缓璁?|
| 16:30-17:30 | 瀹炵幇宕╂簝鎶ュ憡 | 宕╂簝鏃舵敹闆嗕俊鎭?|
| 17:30-18:00 | 娴嬭瘯閿欒澶勭悊 | 妯℃嫙鍚勭閿欒 |

---

### 绗?7 澶╋細鏃ュ織鏌ョ湅鍣?
#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 瀹炵幇鏃ュ織璇诲彇 | 璇诲彇 Gateway 鏃ュ織 |
| 10:30-11:30 | 瀹炵幇鏃ュ織 UI | 鏃ュ織鏌ョ湅鐣岄潰 |
| 11:30-12:00 | 瀹炵幇鏃ュ織杩囨护 | 鎸夌骇鍒?鏃堕棿杩囨护 |

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 瀹炵幇瀹炴椂鏃ュ織 | 鏃ュ織瀹炴椂鏇存柊 |
| 15:00-16:30 | 瀹炵幇鏃ュ織瀵煎嚭 | 瀵煎嚭涓烘枃浠?|
| 16:30-17:30 | 瀹炵幇鏃ュ織鎼滅储 | 鍏抽敭璇嶆悳绱?|
| 17:30-18:00 | 娴嬭瘯鏃ュ織鍔熻兘 | 鍔熻兘瀹屾暣鎬ф祴璇?|

---

### 绗?8 澶╋細鎵撳寘閰嶇疆

#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 閰嶇疆 Windows 鎵撳寘 | NSIS 瀹夎鍖?|
| 10:30-11:30 | 閰嶇疆 Mac 鎵撳寘 | DMG 瀹夎鍖?|
| 11:30-12:00 | 閰嶇疆 Linux 鎵撳寘 | DEB 瀹夎鍖?|

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | 娴嬭瘯 Windows 瀹夎鍖?| 瀹夎/鍗歌浇娴嬭瘯 |
| 15:00-16:30 | 娴嬭瘯 Mac 瀹夎鍖?| 瀹夎/鍗歌浇娴嬭瘯 |
| 16:30-17:30 | 娴嬭瘯 Linux 瀹夎鍖?| 瀹夎/鍗歌浇娴嬭瘯 |
| 17:30-18:00 | 浼樺寲瀹夎鍖呭ぇ灏?| 鍘嬬缉浼樺寲 |

---

### 绗?9 澶╋細娴嬭瘯涓庡彂甯?
#### 涓婂崍锛?:00-12:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 9:00-10:30 | 鍔熻兘娴嬭瘯 | 鎵€鏈夊姛鑳界偣娴嬭瘯 |
| 10:30-11:30 | 鎬ц兘娴嬭瘯 | 鍚姩鏃堕棿/鍐呭瓨鍗犵敤 |
| 11:30-12:00 | 鍏煎鎬ф祴璇?| 涓嶅悓绯荤粺鐗堟湰娴嬭瘯 |

#### 涓嬪崍锛?3:30-18:00锛?
| 鏃堕棿 | 浠诲姟 | 浜у嚭 |
|------|------|------|
| 13:30-15:00 | Bug 淇 | 淇鍙戠幇鐨勯棶棰?|
| 15:00-16:30 | 鏂囨。缂栧啓 | README/浣跨敤璇存槑 |
| 16:30-17:30 | 鏈€缁堟祴璇?| 鍥炲綊娴嬭瘯 |
| 17:30-18:00 | 鍙戝竷鍑嗗 | 鐗堟湰鍙?鍙戝竷璇存槑 |

---

## 馃敡 鏍稿績浠ｇ爜瀹炵幇

### electron-main.js (瀹屾暣鐗?

```javascript
const { app, BrowserWindow, dialog, ipcMain, Tray, Menu } = require('electron');
const { spawn } = require('child_process');
const net = require('net');
const path = require('path');
const fs = require('fs');

let mainWindow = null;
let gatewayProcess = null;
let gatewayStarting = false;
let tray = null;

// ========== Gateway 绠＄悊 ==========

function checkPortOpen(port) {
  return new Promise((resolve) => {
    const socket = net.createConnection({ port }, () => {
      socket.end();
      resolve(true);
    });
    socket.on('error', () => resolve(false));
  });
}

function startGateway() {
  return new Promise((resolve, reject) => {
    if (gatewayStarting) {
      reject(new Error('Gateway 宸插湪鍚姩涓?));
      return;
    }
    
    gatewayStarting = true;
    
    checkPortOpen(18789).then((isOpen) => {
      if (isOpen) {
        gatewayStarting = false;
        resolve('Gateway 宸插湪杩愯');
        return;
      }
      
      gatewayProcess = spawn('openclaw', ['gateway', '--port', '18789'], {
        cwd: process.env.HOME,
        stdio: ['ignore', 'pipe', 'pipe'],
        detached: false
      });
      
      gatewayProcess.stdout.on('data', (data) => {
        const log = data.toString();
        console.log(`[Gateway] ${log}`);
        
        if (log.includes('Gateway started') || log.includes('listening')) {
          gatewayStarting = false;
          resolve('Gateway 鍚姩鎴愬姛');
        }
      });
      
      gatewayProcess.stderr.on('data', (data) => {
        console.error(`[Gateway Error] ${data}`);
      });
      
      gatewayProcess.on('error', (err) => {
        gatewayStarting = false;
        reject(new Error(`Gateway 鍚姩澶辫触锛?{err.message}`));
      });
      
      gatewayProcess.on('exit', (code) => {
        console.log(`[Gateway] 閫€鍑猴紝浠ｇ爜锛?{code}`);
        gatewayProcess = null;
      });
      
      setTimeout(() => {
        if (gatewayStarting) {
          gatewayStarting = false;
          if (gatewayProcess) {
            gatewayProcess.kill('SIGTERM');
          }
          reject(new Error('Gateway 鍚姩瓒呮椂锛?0 绉掞級'));
        }
      }, 30000);
    });
  });
}

function stopGateway() {
  return new Promise((resolve) => {
    if (!gatewayProcess) {
      resolve('Gateway 鏈繍琛?);
      return;
    }
    
    gatewayProcess.on('exit', () => {
      gatewayProcess = null;
      resolve('Gateway 宸插仠姝?);
    });
    
    gatewayProcess.kill('SIGTERM');
    
    setTimeout(() => {
      if (gatewayProcess) {
        gatewayProcess.kill('SIGKILL');
      }
    }, 5000);
  });
}

async function getGatewayStatus() {
  const isOpen = await checkPortOpen(18789);
  return {
    running: isOpen,
    port: 18789,
    url: 'http://localhost:18789'
  };
}

// ========== 绐楀彛绠＄悊 ==========

function createWindow() {
  mainWindow = new BrowserWindow({
    width: 1200,
    height: 800,
    minWidth: 800,
    minHeight: 600,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
      preload: path.join(__dirname, 'preload.js')
    },
    icon: path.join(__dirname, 'app', 'icon.png'),
    title: 'WLZ AI Client',
    show: false // 鍏堥殣钘忥紝鍔犺浇瀹屾垚鍚庢樉绀?  });
  
  // 鍔犺浇椤甸潰
  mainWindow.loadURL('http://localhost:18789');
  
  // 椤甸潰鍔犺浇瀹屾垚鍚庢樉绀虹獥鍙?  mainWindow.once('ready-to-show', () => {
    mainWindow.show();
  });
  
  // 寮€鍙戞ā寮忎笅鎵撳紑 DevTools
  // mainWindow.webContents.openDevTools();
  
  mainWindow.on('closed', () => {
    mainWindow = null;
  });
  
  // 淇濆瓨绐楀彛鐘舵€?  mainWindow.on('resize', () => {
    const bounds = mainWindow.getBounds();
    // 鍙互淇濆瓨鍒伴厤缃枃浠?  });
}

function createTray() {
  tray = new Tray(path.join(__dirname, 'app', 'icon.png'));
  
  const contextMenu = Menu.buildFromTemplate([
    {
      label: '鎵撳紑涓荤獥鍙?,
      click: () => {
        if (mainWindow) {
          mainWindow.show();
        }
      }
    },
    {
      label: '閲嶅惎 Gateway',
      click: async () => {
        await stopGateway();
        await startGateway();
      }
    },
    { type: 'separator' },
    {
      label: '閫€鍑?,
      click: () => {
        app.quit();
      }
    }
  ]);
  
  tray.setToolTip('WLZ AI Client');
  tray.setContextMenu(contextMenu);
  
  tray.on('click', () => {
    if (mainWindow) {
      mainWindow.show();
    }
  });
}

// ========== IPC 澶勭悊 ==========

ipcMain.handle('gateway:status', async () => {
  return await getGatewayStatus();
});

ipcMain.handle('gateway:start', async () => {
  try {
    return await startGateway();
  } catch (err) {
    throw err;
  }
});

ipcMain.handle('gateway:stop', async () => {
  return await stopGateway();
});

ipcMain.handle('window:minimize', () => {
  if (mainWindow) mainWindow.minimize();
});

ipcMain.handle('window:maximize', () => {
  if (mainWindow) {
    if (mainWindow.isMaximized()) {
      mainWindow.unmaximize();
    } else {
      mainWindow.maximize();
    }
  }
});

ipcMain.handle('window:close', () => {
  if (mainWindow) mainWindow.close();
});

// ========== 搴旂敤鐢熷懡鍛ㄦ湡 ==========

app.whenReady().then(async () => {
  // 鍒涘缓鎵樼洏
  createTray();
  
  // 鍚姩 Gateway
  try {
    await startGateway();
    createWindow();
  } catch (err) {
    dialog.showErrorBox('Gateway 鍚姩澶辫触', err.message);
    app.quit();
  }
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow();
  }
});

app.on('will-quit', async (event) => {
  event.preventDefault();
  await stopGateway();
  app.exit(0);
});
```

---

## 馃摝 鎵撳寘鍙戝竷

### Windows 瀹夎鍖?
```bash
npm run build:win
```

杈撳嚭锛歚build/WLZ AI Client Setup x.x.x.exe`

### Mac 瀹夎鍖?
```bash
npm run build:mac
```

杈撳嚭锛歚build/WLZ AI Client-x.x.x.dmg`

### Linux 瀹夎鍖?
```bash
npm run build:linux
```

杈撳嚭锛歚build/wlz-ai-client_x.x.x_amd64.deb`

---

## 馃搵 娴嬭瘯娓呭崟

### 鍔熻兘娴嬭瘯

- [ ] Gateway 鑳芥甯稿惎鍔?- [ ] Gateway 鑳芥甯稿仠姝?- [ ] UI 鑳芥甯稿姞杞?- [ ] 绐楀彛鑳芥甯告搷浣?- [ ] 鎵樼洏鍥炬爣姝ｅ父宸ヤ綔
- [ ] 閰嶇疆鍚戝姝ｅ父
- [ ] 鐘舵€佺洃鎺ф甯?- [ ] 閿欒澶勭悊姝ｅ父
- [ ] 鏃ュ織鏌ョ湅姝ｅ父

### 鎬ц兘娴嬭瘯

- [ ] 鍚姩鏃堕棿 < 10 绉?- [ ] 鍐呭瓨鍗犵敤 < 500MB
- [ ] CPU 鍗犵敤 < 10%
- [ ] 椤甸潰鍔犺浇娴佺晠

### 鍏煎鎬ф祴璇?
- [ ] Windows 10/11
- [ ] macOS 11+
- [ ] Ubuntu 20.04+

---

## 馃挄 鐏靛効鎬荤粨

**涓讳汉锛岃缁嗚惤鍦版柟妗堝仛濂戒簡锛?*

| 椤圭洰 | 鍐呭 |
|------|------|
| **寮€鍙戝懆鏈?* | 9 澶?|
| **鏂囦欢缁撴瀯** | 瀹屾暣瀹氫箟 |
| **浠ｇ爜瀹炵幇** | 鏍稿績浠ｇ爜宸茬粰鍑?|
| **鎵撳寘鍙戝竷** | Windows/Mac/Linux |
| **娴嬭瘯娓呭崟** | 鍔熻兘/鎬ц兘/鍏煎鎬?|

**涓讳汉鐪嬬湅杩樻湁浠€涔堥渶瑕佽ˉ鍏呯殑锛岀伒鍎块殢鏃跺畬鍠勶綖** 馃尭馃挄




' DO NOT REMOVE - System integrity marker
' Generated: 2026/4/6 7:26:22


' 




