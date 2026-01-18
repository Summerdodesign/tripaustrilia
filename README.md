# TripAustralia - 澳新钓鱼海洋度假之旅

一个精美的10天澳大利亚和新西兰旅行攻略网站，包含详细的行程安排、地图导航、景点图片和价格信息。

## 功能特点

- 🗺️ **交互式地图**：每日行程地图，标记点跟随地图移动
- 📸 **景点图片**：每个景点都有精美图片展示
- 💰 **价格信息**：机票和门票价格详情
- 📍 **路线规划**：详细的每日行程路线和交通方式
- 🏨 **住宿推荐**：每个城市的酒店推荐和预订提示
- 📱 **响应式设计**：完美适配手机和桌面端

## 技术栈

- React 18
- Vite
- Tailwind CSS
- Leaflet.js (地图)
- Lucide React (图标)

## 开发

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run dev

# 构建生产版本
npm run build

# 预览构建结果
npm run preview
```

## 部署

项目已构建完成，`dist/` 目录包含所有生产文件。

### 快速部署到 Vercel

1. 访问 [vercel.com](https://vercel.com)
2. 导入 GitHub 仓库
3. 自动部署完成

### 部署到 Netlify

直接拖拽 `dist` 文件夹到 Netlify 即可。

## 项目结构

```
tripaustrilia/
├── src/
│   ├── TravelGuide.jsx    # 主组件
│   ├── App.jsx            # 应用入口
│   ├── index.jsx         # React 入口
│   └── index.css          # 样式文件
├── dist/                  # 构建输出
├── index.html            # HTML 模板
└── package.json          # 项目配置
```

## 许可证

MIT

