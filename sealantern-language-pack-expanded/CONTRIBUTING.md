# Contributing to Sea Lantern Expanded Language Pack

感謝您有興趣為本項目做出貢獻！

## 如何貢獻

### 報告問題

如果您發現翻譯錯誤或遺漏：

1. 打開一個 GitHub Issue
2. 清楚描述問題和位置
3. 提供錯誤的語言代碼和字符串鍵值
4. 如果可能，建議修正方案

### 改進翻譯

1. Fork 本倉庫
2. 編輯 `languages/` 目錄中的 JSON 文件
3. 確保 JSON 格式有效：
   ```bash
   npm install
   npm run validate
   ```
4. 提交 Pull Request，描述您的改動

### 添加新語言

1. 複製 `languages/en-US.json` 作為模板
2. 重命名為 `languages/[language-code].json`
3. 翻譯所有字符串值（保持鍵名不變）
4. 在 `manifest.json` 中更新語言列表
5. 提交 PR

## 翻譯指南

### 最佳實踐

- ✅ 保持英文原意
- ✅ 考慮文化差異和地方習慣
- ✅ 保持格式和特殊字符
- ✅ 測試在實際應用中的顯示效果

### 避免

- ❌ 機器翻譯未驗證
- ❌ 更改鍵名或結構
- ❌ 添加不必要的註解
- ❌ 修改 JSON 格式

## 代碼風格

- 遵循原有的 JSON 格式
- UTF-8 編碼
- 2 個空格縮進
- 無尾部逗號

## 版本發佈

在提交 PR 時，如果是新語言，請指定版本號變更：
- 新語言或大型改動: 次版本號 +1 (e.g., 1.0.0 → 1.1.0)
- 翻譯改進或修復: 補丁版本號 +1 (e.g., 1.0.0 → 1.0.1)

## 聯繫方式

- GitHub Issues: 項目錯誤和建議
- Pull Requests: 貢獻代碼和翻譯

感謝您的貢獻！🙏
