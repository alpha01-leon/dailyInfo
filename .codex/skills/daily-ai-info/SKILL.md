---
name: daily-ai-info
description: 按固定来源整理每日 AI 技术资讯，写入 dailyInfo/src/YYYY-MM-DD.md，更新 README 索引并提交 Git。
---

# 每日 AI 资讯整理

## 目标

把指定日期的 AI 资讯按“聚合器 + 官方源 + 论文/代码源”整理到 `src/YYYY-MM-DD.md`，并更新根目录 `README.md` 的日期索引。

## 来源与准确链接

只从以下列出的规范 URL 开始访问。进入页面后核对浏览器地址栏的域名和协议；如果域名不一致、出现拼写变体或跳转到非官方镜像，不要采集内容。

### 热点聚合与中文媒体

- The Rundown AI: <https://www.therundown.ai/>
- TLDR AI: <https://tldr.tech/ai>
- 机器之心: <https://www.jiqizhixin.com/>
- 量子位: <https://www.qbitai.com/>

### 官方发布

- OpenAI News: <https://openai.com/zh-Hans-CN/news/>
- Anthropic News: <https://www.anthropic.com/news>
- Google DeepMind Blog: <https://deepmind.google/discover/blog/>
- Microsoft Research Blog: <https://www.microsoft.com/en-us/research/blog/>

### 论文、模型与代码

- Hugging Face Papers: <https://huggingface.co/papers>
- Hugging Face Blog: <https://huggingface.co/blog>
- arXiv cs.AI: <https://arxiv.org/list/cs.AI/recent>
- GitHub Trending: <https://github.com/trending>
- Hugging Face Models: <https://huggingface.co/models>

### 安全与行业资讯

- The Hacker News: <https://thehackernews.com/>

### 深度分析

- The Batch: <https://www.deeplearning.ai/the-batch/>
- Import AI: <https://jack-clark.net/>
- Latent Space: <https://www.latent.space/>

文章详情页必须保持在对应来源的官方域名下。详情链接可以来自页面中的真实链接，但不能通过猜测 URL、搜索结果中的相似域名或第三方转载页生成。

## 浏览器访问规则

- 部分来源会对直接 HTTP 请求、命令行抓取或无浏览器环境返回 `403`、访问挑战页或不完整内容；这不代表来源没有资讯。
- 遇到上述情况，必须使用本地浏览器打开本节列出的规范 URL，从浏览器实际显示的页面、文章卡片和详情页读取信息。
- Latent Space 首页的订阅弹窗通过点击页面上的 “No, thanks” 按钮关闭；这是站内提供的普通按钮，不属于绕过登录或验证。
- 浏览器中打开后，核对地址栏的完整 URL 和最终域名；文章链接必须来自页面真实可见的链接或已验证的详情页。
- 动态加载页面要等待内容出现在页面后再记录；只使用可见标题、日期、摘要和链接，不读取或猜测页面未显示的内容。
- 如果浏览器也停留在验证码、访问挑战、登录墙或安全警告页，不要绕过验证或猜测内容；在“来源访问与口径说明”中记录该限制。
- 浏览器访问失败后，可以保留来源入口和失败原因，但不得用搜索摘要、第三方转载或猜测的详情 URL 补齐文章。

## 日期和链接规则

- 以来源页面实际显示的发布日期为准，不把“昨天”“几小时前”直接改写成确定日期。
- 汇总日期可以是当天，但必须在页面日期说明中注明条目的实际发布日期。
- 每个收录的文章标题都必须链接到原文；没有单篇 URL 时只能记录为来源首页观察。
- 不使用搜索结果摘要替代原文，不编造 URL、发布日期、模型名称或数据。
- 页面无法访问、需要登录、出现验证码或没有当天条目时，在“来源访问与口径说明”中记录原因。
- 直接请求返回 `403` 时，必须先尝试本地浏览器；浏览器也无法读取时才记录访问失败。

## 固定文档结构

`src/YYYY-MM-DD.md` 必须按以下顺序：

1. `5 分钟摘要`
2. `热点聚合与中文媒体`
3. `官方发布`
4. `论文、模型与开源趋势`
5. `行业、安全与深度分析`
6. `综合观察`
7. `来源访问与口径说明`

规则：

- 文件首行是链接到 `../README.md` 的日期标题。
- 来源栏目使用三级标题并链接到来源首页。
- 能读取到资讯的来源栏目使用 Markdown 表格，至少包含“标题”“链接”“简介”“发布时间”四列；标题、链接、简介和发布时间均以浏览器实际可见内容为准。
- 如果浏览器访问受限（验证码、访问挑战、登录墙或安全警告），该来源不使用表格，只在“来源访问与口径说明”中记录访问结果和原因；不要伪造标题或日期。
- 重点文章不再使用四级标题，改为表格行；“链接”列必须提供原文链接。没有单篇 URL 时，链接列使用来源首页，并在简介中说明限制。
- 论文榜单、模型趋势和同类批量条目也使用同样的表格；相对时间、月份标签和 Today 等页面口径原样保留。
- 说明性段落可以使用项目符号；不要把无法验证的内容写成确定事实。

## Git 流程

1. 检查 `git status`，保留用户已有修改。
2. 创建或更新 `src/YYYY-MM-DD.md`。
3. 若 README 没有日期索引，在索引顶部添加：`| YYYY-MM-DD | [AI 技术资讯](src/YYYY-MM-DD.md) |`。
4. 执行 `git diff --check`。
5. 提交信息使用 `添加 YYYY-MM-DD AI 资讯`。
6. 按任务要求推送到 `origin/main`；推送失败时记录错误，不删除或重置用户文件。

## 输出检查

- 日期文件存在且路径正确。
- 七个固定一级栏目顺序一致。
- 文章标题链接可点击。
- README 有日期索引。
- Git 工作区状态和提交结果已说明。
