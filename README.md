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

<p align="center">
  <img src="https://raw.githubusercontent.com/user/travel-map-pro-260101/main/preview.png" alt="預覽圖" width="800">
</p>

---

## ✨ 功能特色

### 📸 照片管理
- **拖曳上傳** - 支援批次上傳多張照片
- **手機拍照** - 直接開啟相機拍攝並記錄
- **EXIF 解析** - 自動讀取照片 GPS 座標和拍攝時間
- **逆地理編碼** - 自動辨識國家、城市名稱
- **縮圖生成** - 自動壓縮儲存，節省空間

### 🗺️ 地圖功能
- **多種地圖樣式** - 深色/淺色/衛星/地形
- **標記群聚** - 密集區域自動合併
- **熱力圖** - 視覺化造訪密度
- **路線連線** - 依時間順序連接足跡
- **世界地圖塗色** - SVG 互動式世界地圖

### 📊 統計分析
- **照片統計** - 總數、國家、城市、里程
- **月份分佈** - 每月照片數量圖表
- **年度熱圖** - GitHub 風格活動熱圖
- **極端點** - 最北/南/東/西足跡
- **進階圖表** - 圓餅圖、柱狀圖、折線圖

### 🧳 旅程管理
- **自動分群** - 依日期和地點智慧分組
- **手動建立** - 自訂旅程名稱和日期
- **批次分配** - 多選照片指派旅程
- **旅程摘要** - 生成旅程統計卡片

### ☁️ Google 整合
- **Google 相簿** - 一鍵上傳照片到 Google Photos
- **Google 文件** - 自動生成圖文並茂旅行記錄
- **OAuth 2.0** - 安全的 Google 帳號認證

### 🏆 成就系統
- **26 種成就** - 照片/國家/城市/距離里程碑
- **大陸解鎖** - 亞洲/歐洲/美洲/大洋洲/非洲
- **極端點成就** - 北極圈/南半球/赤道

### 📱 手機優化
- **響應式設計** - 自動適配手機/平板/桌面
- **底部導航** - iOS 風格 Tab Bar
- **觸控優化** - 滑動、長按、手勢支援
- **PWA 支援** - 可加到主畫面

### 🎨 其他功能
- **5 種主題** - 深色/淺色/海洋/森林/日落
- **幻燈片播放** - 自動播放照片
- **足跡動畫** - 時間順序回放旅程
- **願望清單** - 記錄想去的地點
- **年度回顧** - 生成年度旅行總結
- **匯入匯出** - JSON/GPX/CSV 格式

---

## 🚀 快速開始

### 方法一：直接使用
1. 下載 `index.html`
2. 用瀏覽器開啟
3. 開始上傳照片！

### 方法二：本地伺服器
```bash
# 使用 Python
python -m http.server 8080

# 使用 Node.js
npx serve .

# 使用 PHP
php -S localhost:8080
```

### 方法三：部署到 GitHub Pages
1. Fork 此專案
2. 前往 Settings → Pages
3. 選擇 main 分支
4. 等待部署完成

---

## ⚙️ Google API 設定

要使用 Google 相簿/文件功能，需要設定 API：

### 步驟 1：建立 Google Cloud 專案
1. 前往 [Google Cloud Console](https://console.cloud.google.com/)
2. 建立新專案

### 步驟 2：啟用 API
- Photos Library API
- Google Docs API
- Google Drive API

### 步驟 3：建立 OAuth 憑證
1. 前往「憑證」頁面
2. 建立 OAuth 2.0 用戶端 ID
3. 應用程式類型選擇「網頁應用程式」
4. 新增授權的 JavaScript 來源

### 步驟 4：填入憑證
在 `index.html` 中找到並填入：
```javascript
const GOOGLE_CLIENT_ID = '你的CLIENT_ID.apps.googleusercontent.com';
const GOOGLE_API_KEY = '你的API_KEY';
```

---

## 📁 檔案結構

```
travel-map-pro-260101/
├── index.html          # 主程式（單一 HTML 檔案）
├── README.md           # 說明文件
└── LICENSE             # MIT 授權
```

---

## 🛠️ 技術架構

### 前端框架
- **Pure JavaScript** - 無需框架，原生 JS
- **IndexedDB** - 本地資料儲存
- **LocalStorage** - 設定和快取

### 外部函式庫
| 函式庫 | 用途 |
|--------|------|
| Leaflet | 互動式地圖 |
| Leaflet.markercluster | 標記群聚 |
| Leaflet.heat | 熱力圖 |
| EXIF.js | EXIF 資訊解析 |
| html2canvas | 畫面擷取 |
| Chart.js | 圖表繪製 |
| Sortable.js | 拖曳排序 |

### API 服務
| 服務 | 用途 |
|------|------|
| OpenStreetMap | 地圖圖磚 |
| Nominatim | 逆地理編碼 |
| Google Photos API | 相簿上傳 |
| Google Docs API | 文件建立 |

---

## 📱 瀏覽器支援

| 瀏覽器 | 版本 |
|--------|------|
| Chrome | 80+ |
| Firefox | 75+ |
| Safari | 13+ |
| Edge | 80+ |
| iOS Safari | 13+ |
| Android Chrome | 80+ |

---

## 🔒 隱私與安全

- ✅ **本地優先** - 所有資料存在你的裝置
- ✅ **無伺服器** - 不需要後端伺服器
- ✅ **不追蹤** - 沒有任何追蹤或分析
- ✅ **可離線** - 離線也能使用（需先載入）
- ✅ **開源透明** - 程式碼完全公開

---

## 📊 專案統計

| 指標 | 數值 |
|------|------|
| 程式碼行數 | 11,800+ |
| 檔案大小 | ~454 KB |
| JavaScript 函數 | 250+ |
| CSS 變數 | 90+ |
| 支援國家 | 200+ |

---

## 🤝 貢獻

歡迎提交 Issue 和 Pull Request！

1. Fork 專案
2. 建立功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交變更 (`git commit -m 'Add some AmazingFeature'`)
4. 推送分支 (`git push origin feature/AmazingFeature`)
5. 開啟 Pull Request

---

## 📜 授權

本專案採用 MIT 授權 - 詳見 [LICENSE](LICENSE) 檔案

---

## 🙏 致謝

- [Leaflet](https://leafletjs.com/) - 優秀的開源地圖函式庫
- [OpenStreetMap](https://www.openstreetmap.org/) - 免費的地圖資料
- [Nominatim](https://nominatim.org/) - 地理編碼服務
- [Chart.js](https://www.chartjs.org/) - 美觀的圖表函式庫

---

## 📧 聯絡

如有問題或建議，歡迎：
- 提交 [Issue](../../issues)
- 發送 Pull Request

---

<p align="center">
  Made with ❤️ by Sone Wang
</p>

<p align="center">
  <sub>🌍 記錄每一步，珍藏每一刻</sub>
</p>
