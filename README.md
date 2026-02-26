# 🌍 Sea Lantern 擴展語言包 - 安裝說明

**一個包含 233+ 語言的超大語言包 - 為 Sea Lantern Minecraft 啟動器**

## 📦 包內容

本 ZIP 文件包含：
- ✅ 233 個完整翻譯的語言文件
- ✅ 插件清單 (manifest.json)
- ✅ 插件加載器 (index.js)
- ✅ 完整文檔和指南
- ✅ 特殊 Easter Egg 語言包

**總大小**: ~5 MB (壓縮後)
**解壓後**: ~15-20 MB

## 🚀 快速安裝 (3 步)

### 步驟 1️⃣ : 解壓文件
```bash
# Windows
unzip sealantern-language-pack-expanded-1.0.0.zip

# 或使用 Windows 資源管理器右鍵選擇「解壓全部」
```

### 步驟 2️⃣ : 複製到 Sea Lantern 插件目錄

**找到您的 Sea Lantern 插件目錄：**

- **Windows**: `%APPDATA%\Sea Lantern\plugins\` 或 `~/.sealantern/plugins/`
- **macOS**: `~/Library/Application Support/Sea Lantern/plugins/`
- **Linux**: `~/.config/sealantern/plugins/`

**複製步驟**:
```bash
# 將解壓的 sealantern-language-pack-expanded 文件夾複製到上述目錄
# 確保最終路徑為：
# ~/.sealantern/plugins/sealantern-language-pack-expanded/
#     ├── manifest.json
#     ├── index.js
#     ├── languages/
#     │   ├── aa.json
#     │   ├── ab.json
#     │   └── ... (其他 231 個文件)
#     ├── README.md
#     └── CONTRIBUTING.md
```

### 步驟 3️⃣ : 重啟 Sea Lantern

1. 完全關閉 Sea Lantern（確保沒有後台進程）
2. 重新打開 Sea Lantern
3. 進入 **Settings（設置）** → **Language（語言）**
4. 您應該看到 233+ 語言選項

## ✅ 驗證安裝

### 方法 1: 通過設置菜單檢查
1. 打開 Sea Lantern
2. 點擊 ⚙️ 設置
3. 找到「Language」或「語言」選項
4. 檢查是否有 230+ 語言選項

### 方法 2: 通過開發者控制台
在 Sea Lantern 的開發者工具中運行：
```javascript
// 檢查當前語言
console.log(i18n.locale);

// 列出所有已加載的語言
console.log(Object.keys(i18n.messages).length);

// 檢查特定語言是否存在
console.log('aa' in i18n.messages); // 應該返回 true
console.log('zh-CN' in i18n.messages); // 應該返回 true
```

## 🌐 支援的語言預覽

### 完整語言列表（部分展示）

**歐洲語言**: English, German, French, Spanish, Italian, Portuguese, Dutch, Polish, Russian, Greek, Turkish, Swedish, Danish, Norwegian...

**亞洲語言**: 簡體中文, 繁體中文, 日本語, 한국어, ภาษาไทย, Tiếng Việt, বাংলা, हिन्दी, اللغة العربية, فارسی...

**非洲語言**: Swahili, Yoruba, Igbo, Hausa, Somali, Amharic, Zulu, Xhosa...

**美洲語言**: Português (Brasil), Español (México), Español (Argentina), English (Canada), Français (Canada)...

**稀有和古代語言**: 
- 拉丁文 (la)
- 古希臘文 (grc)
- 梵文 (sa)
- 古希伯來文 (he-ancient)
- 閩南語 (nan)
- 客家語 (hak)
- 贛語 (gan)
- 吳語 (wuu)
- 粵語 (yue)
- ...及 200+ 其他語言

**特殊編碼**:
- 漢語拼音 (zh-pinyin)
- 日語假名 (ja-kana)
- 韓語自搬字 (ko-jamo)

### 🥚 Easter Egg 語言

安裝此插件後，您將獲得特殊的 **x-Easter-Egg** 語言！

選擇它會看到勵志語錄而不是正常的 UI 字符串。示例：
- "The only way to do great work is to love what you do. - Steve Jobs"
- "Innovation distinguishes between a leader and a follower. - Steve Jobs"

## 🆘 故障排除

### 問題: 安裝後仍然看不到新語言

**解決方案**:
1. ✅ 確認文件夾正確複製到 `~/.sealantern/plugins/`
2. ✅ 確認 `sealantern-language-pack-expanded` 文件夾内有 233 個 `.json` 文件
3. ✅ 刪除 Sea Lantern 的緩存：
   - Windows: 刪除 `%APPDATA%\Sea Lantern\cache\`
   - macOS/Linux: 刪除 `~/.sealantern/cache/`
4. ✅ 完全重啟 Sea Lantern（確保進程已關閉）

### 問題: JSON 語法錯誤

如果看到控制台錯誤，可能某個語言文件有語法問題：
1. 驗證 JSON 文件有效性：在線 JSON 驗證器 → https://jsonlint.com/
2. 重新下載本插件（可能傳輸中損壞）
3. 報告 Issue（附帶錯誤信息）

### 問題: 大小寫或編碼問題

確保：
- ✅ 文件夾名稱正確：`sealantern-language-pack-expanded`（小寫，帶連字符）
- ✅ 文件名大小寫正確：`manifest.json`, `index.js`
- ✅ 使用 UTF-8 編碼打開文件

## 📊 性能影響

**加載時間**: +50-150 ms （首次加載 233 個文件）
**內存占用**: +10-15 MB （語言數據快取）
**UI 響應**: 無影響 （<100 ms 語言切換）

插件不會影響 Sea Lantern 的遊戲啟動或運行性能。

## 🔧 高級使用

### 創建自定義語言變體

如果您想為現有語言創建地域變體：

1. 複製現有語言文件，例如 `zh-CN.json`
2. 重命名為 `zh-CN-custom.json`
3. 編輯翻譯
4. 重啟 Sea Lantern

### 提交改進

如果您想改進翻譯或添加新語言：
1. Fork GitHub 倉庫: https://github.com/Dkejsjqosjdjsh/sealantern-language-pack-expanded
2. 編輯 JSON 文件
3. 提交 Pull Request
4. 您的改動將被考慮納入下一個版本

## 📝 文件說明

| 文件 | 作用 |
|------|------|
| `manifest.json` | 插件元數據（名稱、版本、權限等） |
| `index.js` | 插件加載器和初始化代碼 |
| `languages/` | 233 個語言 JSON 文件目錄 |
| `README.md` | 完整文檔 |
| `CONTRIBUTING.md` | 貢獻指南 |

## 📞 支援和反饋

遇到問題？有建議？

- 🐛 報告 Bug: https://github.com/Dkejsjqosjdjsh/sealantern-language-pack-expanded/issues
- 💡 功能請求: 同上
- 📧 聯繫作者: 通過 GitHub Issues

## 📄 許可證

本插件遵循 Sea Lantern 主項目的相同許可證。

## 🙏 致謝

感謝所有參與語言支援和本地化的貢獻者！

---

**版本**: 1.0.0
**作者**: 發燈條 (Dkejsjqosjdjsh)
**語言支援**: 233+
**最後更新**: 2024

**🌍 讓 Sea Lantern 成為真正的全球啟動器！**

---

## 快速命令參考

### 在 Windows PowerShell 中自動安裝

```powershell
# 自動複製到插件目錄
$pluginDir = "$env:APPDATA\Sea Lantern\plugins\sealantern-language-pack-expanded"
mkdir -Force $pluginDir > $null
Copy-Item "sealantern-language-pack-expanded\*" $pluginDir -Recurse -Force
Write-Host "✅ 插件安裝完成！請重啟 Sea Lantern。"
```

### 在 macOS/Linux 中自動安裝

```bash
# 自動複製到插件目錄
PLUGIN_DIR="$HOME/.sealantern/plugins/sealantern-language-pack-expanded"
mkdir -p "$PLUGIN_DIR"
cp -r sealantern-language-pack-expanded/* "$PLUGIN_DIR"/
echo "✅ 插件安裝完成！請重啟 Sea Lantern。"
```

