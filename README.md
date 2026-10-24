# AI Daily Info

按日期归档通过“聚合器 + 官方源 + 论文/代码源”整理的 AI 技术资讯。

## 资讯索引

| 日期 | 内容 |
|---|---|
| 2026-10-24 | [AI 技术资讯](src/2026-10-24.md) |`r`n| 2026-10-23 | [AI 技术资讯](src/2026-10-23.md) |
| 2026-10-22 | [AI 技术资讯](src/2026-10-22.md) |
| 2026-10-21 | [AI 技术资讯](src/2026-10-21.md) |
| 2026-10-20 | [AI 技术资讯](src/2026-10-20.md) |
| 2026-10-19 | [AI 技术资讯](src/2026-10-19.md) |
| 2026-10-18 | [AI 技术资讯](src/2026-10-18.md) |
| 2026-10-17 | [AI 技术资讯](src/2026-10-17.md) |
| 2026-10-16 | [AI 技术资讯](src/2026-10-16.md) |
| 2026-10-15 | [AI 技术资讯](src/2026-10-15.md) |
| 2026-10-14 | [AI 技术资讯](src/2026-10-14.md) |
| 2026-10-13 | [AI 技术资讯](src/2026-10-13.md) |
| 2026-10-12 | [AI 技术资讯](src/2026-10-12.md) |
| 2026-10-11 | [AI 技术资讯](src/2026-10-11.md) |
| 2026-10-10 | [AI 技术资讯](src/2026-10-10.md) |
| 2026-10-09 | [AI 技术资讯](src/2026-10-09.md) |
| 2026-10-08 | [AI 技术资讯](src/2026-10-08.md) |

## 每日资讯来源

### 热点聚合

- [The Rundown AI](https://www.therundown.ai/)
- [TLDR AI](https://tldr.tech/ai)
- [机器之心](https://www.jiqizhixin.com/)
- [量子位](https://www.qbitai.com/)

### 官方发布

- [OpenAI News](https://openai.com/zh-Hans-CN/news/)
- [Anthropic News](https://www.anthropic.com/news)
- [Google DeepMind Blog](https://deepmind.google/discover/blog/)
- [Microsoft Research Blog](https://www.microsoft.com/en-us/research/blog/)

### 论文、模型与代码

- [Hugging Face Papers](https://huggingface.co/papers)
- [Hugging Face Blog](https://huggingface.co/blog)
- [arXiv cs.AI](https://arxiv.org/list/cs.AI/recent)
- [GitHub Trending](https://github.com/trending)
- [Hugging Face Models](https://huggingface.co/models)

### 安全与行业资讯

- [The Hacker News](https://thehackernews.com/)

### 深度分析

- [The Batch](https://www.deeplearning.ai/the-batch/)
- [Import AI](https://jack-clark.net/)
- [Latent Space](https://www.latent.space/)

每日记录以页面实际显示日期为准；无法访问、需要登录或没有当天条目的来源会在对应日期文件中注明。已收录的文章标题均链接到原文；如果来源页面只展示主题而没有暴露单篇 URL，则记录为来源首页观察。

## 每日文档格式

`src/YYYY-MM-DD.md` 统一按以下顺序编排：

1. 5 分钟摘要
2. 热点聚合与中文媒体
3. 官方发布
4. 论文、模型与开源趋势
5. 行业、安全与深度分析
6. 综合观察
7. 来源访问与口径说明

来源栏目使用三级标题并链接到来源首页。能读取到资讯的来源使用 Markdown 表格，至少包含“标题”“链接”“简介”“发布时间”四列；重点文章和论文榜单、模型趋势等批量条目都是表格行，不再使用四级标题或列表。浏览器访问受限（验证码、访问挑战、登录墙或安全警告）的来源不使用表格，只在“来源访问与口径说明”中记录访问结果和原因。没有单篇链接的内容在链接列使用来源首页，并在简介中说明限制。

## 2026-10-16 修复记录

- OpenAI News 来源切换为中文资讯页 <https://openai.com/zh-Hans-CN/news/>，浏览器可正常读取。
- Latent Space 首页订阅弹窗通过页面自带 “No, thanks” 按钮关闭后可正常读取；这是站内普通按钮，不属于绕过验证。
- Papers with Code 站点已切换，从来源列表中移除。
- 浏览器访问受限的来源不再写入表格条目，避免伪造标题或日期。

## 自动化文件

- [每日 AI 资讯 Skill](.codex/skills/daily-ai-info/SKILL.md)：定义来源、日期、Markdown 和 Git 规范。
- [定时任务 Prompt](DAILY_TASK_PROMPT.md)：用于配置每日自动化任务。
- [PowerShell 执行脚本](scripts/collect_daily_info.ps1)：创建日期文件、运行格式检查并提交；传入 `-Push` 时推送到 `origin/main`。
