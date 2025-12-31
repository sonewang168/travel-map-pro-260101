#!/bin/bash
# ============================================
# GitHub 上傳腳本
# 倉庫名稱: travel-map-pro-260101
# ============================================

echo "🚀 旅行足跡地圖 Pro - GitHub 上傳腳本"
echo "=========================================="
echo ""

# 檢查 git 是否安裝
if ! command -v git &> /dev/null; then
    echo "❌ 錯誤: 請先安裝 git"
    echo "   macOS: brew install git"
    echo "   Ubuntu: sudo apt install git"
    exit 1
fi

# 設定變數
REPO_NAME="travel-map-pro-260101"
GITHUB_USER=""

# 詢問 GitHub 使用者名稱
read -p "請輸入你的 GitHub 使用者名稱: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ 錯誤: 使用者名稱不能為空"
    exit 1
fi

echo ""
echo "📁 準備上傳以下檔案:"
echo "   - index.html (主程式)"
echo "   - README.md (說明文件)"
echo "   - LICENSE (授權條款)"
echo ""

# 初始化 git
echo "📝 初始化 Git 倉庫..."
git init

# 設定主分支名稱
git branch -M main

# 添加所有檔案
echo "📦 添加檔案..."
git add .

# 提交
echo "✅ 提交變更..."
git commit -m "🚀 初始版本 - 旅行足跡地圖 Pro v2.0.0

Features:
- 📸 照片上傳與 EXIF 解析
- 🗺️ 互動式地圖（多種樣式）
- 📊 統計分析與圖表
- 🧳 旅程管理
- ☁️ Google 相簿/文件整合
- 🏆 成就系統
- 📱 手機響應式設計
- 🎨 多主題支援"

echo ""
echo "=========================================="
echo "接下來請在 GitHub 上建立倉庫："
echo ""
echo "1️⃣ 前往: https://github.com/new"
echo ""
echo "2️⃣ 設定:"
echo "   - Repository name: $REPO_NAME"
echo "   - Description: 🌍 旅行足跡地圖 - 記錄你的世界探索"
echo "   - Public: ✅"
echo "   - 不要勾選 Add README"
echo "   - 不要勾選 Add .gitignore"
echo "   - 不要勾選 Add license"
echo ""
echo "3️⃣ 建立後，執行以下指令:"
echo ""
echo "   git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "   git push -u origin main"
echo ""
echo "=========================================="
echo ""

# 詢問是否要自動設定 remote
read -p "是否已在 GitHub 建立倉庫並要設定 remote？(y/n): " SETUP_REMOTE

if [ "$SETUP_REMOTE" = "y" ] || [ "$SETUP_REMOTE" = "Y" ]; then
    git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"
    echo ""
    echo "🔗 Remote 已設定: https://github.com/$GITHUB_USER/$REPO_NAME.git"
    echo ""
    read -p "是否要推送到 GitHub？(y/n): " DO_PUSH
    
    if [ "$DO_PUSH" = "y" ] || [ "$DO_PUSH" = "Y" ]; then
        echo "📤 推送中..."
        git push -u origin main
        echo ""
        echo "✅ 完成！"
        echo ""
        echo "🌐 你的倉庫: https://github.com/$GITHUB_USER/$REPO_NAME"
        echo "📄 GitHub Pages: https://$GITHUB_USER.github.io/$REPO_NAME/"
        echo ""
        echo "💡 要啟用 GitHub Pages:"
        echo "   1. 前往倉庫 Settings → Pages"
        echo "   2. Source 選擇 'Deploy from a branch'"
        echo "   3. Branch 選擇 'main' 和 '/ (root)'"
        echo "   4. 點擊 Save"
    fi
fi

echo ""
echo "🎉 腳本執行完成！"
