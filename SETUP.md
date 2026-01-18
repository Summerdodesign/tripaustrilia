# TripAustralia 项目设置指南

## ✅ 项目已创建

新项目已创建在：`/Users/summer_xia/tripaustrilia/`

## 📦 安装依赖

```bash
cd /Users/summer_xia/tripaustrilia
npm install
```

## 🚀 推送到 GitHub

### 步骤1: 在 GitHub 上创建新仓库

1. 访问 https://github.com/new
2. 仓库名称填写：`tripaustrilia`
3. 选择 Public（公开）或 Private（私有）
4. **不要**勾选 "Initialize this repository with a README"
5. 点击 "Create repository"

### 步骤2: 推送代码到 GitHub

在终端执行以下命令：

```bash
cd /Users/summer_xia/tripaustrilia

# 添加远程仓库（如果还没有添加）
git remote add origin https://github.com/Summerdodesign/tripaustrilia.git

# 或者如果远程仓库已存在，更新URL
git remote set-url origin https://github.com/Summerdodesign/tripaustrilia.git

# 推送到 GitHub
git push -u origin main
```

如果遇到认证问题，可能需要：
- 使用 Personal Access Token 代替密码
- 或者配置 SSH 密钥

## 🌐 部署到网页

### 方法1: Vercel（推荐）

1. 访问 https://vercel.com
2. 使用 GitHub 登录
3. 点击 "Add New Project"
4. 选择 `tripaustrilia` 仓库
5. Vercel 会自动检测 Vite 项目并部署
6. 获得免费 URL：`tripaustrilia.vercel.app`

### 方法2: Netlify

1. 访问 https://www.netlify.com
2. 登录后点击 "Add new site" → "Import an existing project"
3. 选择 GitHub，然后选择 `tripaustrilia` 仓库
4. 构建设置：
   - Build command: `npm run build`
   - Publish directory: `dist`
5. 点击 "Deploy site"

### 方法3: GitHub Pages

1. 在仓库 Settings → Pages
2. Source 选择 "GitHub Actions"
3. 或者修改 `vite.config.js` 中的 `base` 为 `/tripaustrilia/`
4. 然后选择 `dist` 目录作为源

## 📁 项目结构

```
tripaustrilia/
├── src/
│   ├── TravelGuide.jsx    # 主组件 - 旅行攻略
│   ├── App.jsx            # 应用入口
│   ├── index.jsx          # React 入口
│   └── index.css          # 样式文件
├── index.html             # HTML 模板
├── package.json           # 项目配置
├── vite.config.js         # Vite 配置
├── tailwind.config.js     # Tailwind 配置
└── README.md              # 项目说明
```

## 🎯 项目特点

- ✅ 10天详细行程安排
- ✅ 交互式地图（标记点跟随地图移动）
- ✅ 景点图片展示
- ✅ 机票和门票价格信息
- ✅ 每日路线规划
- ✅ 住宿推荐
- ✅ 响应式设计（手机+桌面）

## 📝 下一步

1. 在 GitHub 上创建 `tripaustrilia` 仓库
2. 执行推送命令
3. 部署到 Vercel 或 Netlify

