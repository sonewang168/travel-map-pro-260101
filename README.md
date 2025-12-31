# 🌍 旅行足跡地圖 Pro (Travel Map Pro)

<p align="center">
  <img src="https://img.shields.io/badge/版本-2.0.0-blue.svg" alt="版本">
  <img src="https://img.shields.io/badge/語言-繁體中文-green.svg" alt="語言">
  <img src="https://img.shields.io/badge/平台-Web%20%7C%20Mobile-orange.svg" alt="平台">
  <img src="https://img.shields.io/badge/授權-MIT-lightgrey.svg" alt="授權">
</p>

<p align="center">
  <strong>記錄你的世界探索，視覺化你的旅行足跡</strong>
</p>

---

## ✨ 功能特色

### 📸 照片管理
- **拖曳上傳** - 支援批次上傳多張照片
- **手機拍照** - 直接開啟相機拍攝並記錄（需 HTTPS）
- **EXIF 解析** - 自動讀取照片 GPS 座標和拍攝時間
- **逆地理編碼** - 自動辨識國家、城市名稱

### 🗺️ 地圖功能
- **多種地圖樣式** - 深色/淺色/衛星/地形
- **標記群聚** - 密集區域自動合併
- **熱力圖** - 視覺化造訪密度
- **路線連線** - 依時間順序連接足跡

### ☁️ Google 整合
- **Google 相簿** - 一鍵上傳照片
- **Google 文件** - 自動生成旅行記錄
- **手機設定 API** - 直接在設定頁面輸入 API Key

### 📱 手機優化
- **響應式設計** - 自動適配手機/平板/桌面
- **底部導航** - iOS 風格 Tab Bar
- **拍照按鈕** - 快速開啟相機

---

## 🚀 快速開始

### 方法一：直接使用
1. 下載 `index.html`
2. 用瀏覽器開啟
3. 開始上傳照片！

### 方法二：部署到 GitHub Pages（推薦）
1. Fork 此專案
2. Settings → Pages → main 分支
3. 等待部署完成
4. 訪問 `https://你的帳號.github.io/travel-map-pro-260101/`

> ⚠️ **注意**：手機拍照功能需要 HTTPS，建議部署到 GitHub Pages

---

## ⚙️ Google API 設定（手機版）

### 在手機上設定步驟：

1. **開啟應用程式** → 點擊底部「📊 統計」
2. **切換到「設定」Tab**
3. **找到「☁️ Google API 設定」區塊**
4. **輸入 Client ID 和 API Key**
5. **點擊「儲存 API 設定」**
6. **重新整理頁面**

### 如何取得 API 憑證：

1. 前往 [Google Cloud Console](https://console.cloud.google.com/)
2. 建立新專案
3. 啟用以下 API：
   - Photos Library API
   - Google Docs API  
   - Google Drive API
4. 建立 OAuth 2.0 憑證
5. 複製 Client ID 貼到設定中

---

## 📁 檔案結構

```
travel-map-pro-260101/
├── index.html          # 主程式
├── README.md           # 說明文件
├── LICENSE             # MIT 授權
└── upload-to-github.sh # 上傳腳本
```

---

## 🛠️ 技術架構

| 函式庫 | 用途 |
|--------|------|
| Leaflet | 互動式地圖 |
| EXIF.js | EXIF 資訊解析 |
| Chart.js | 圖表繪製 |
| html2canvas | 畫面擷取 |

---

## 📊 專案統計

| 指標 | 數值 |
|------|------|
| 程式碼行數 | 11,890+ |
| 檔案大小 | ~457 KB |
| JavaScript 函數 | 260+ |

---

## 📜 授權

MIT License - 詳見 [LICENSE](LICENSE)

---

<p align="center">
  Made with ❤️ by Sone Wang
</p>

<p align="center">
  <sub>🌍 記錄每一步，珍藏每一刻</sub>
</p>
