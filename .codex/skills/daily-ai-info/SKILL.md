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

- OpenAI News: <https://openai.com/news/>
- Anthropic News: <https://www.anthropic.com/news>
- Google DeepMind Blog: <https://deepmind.google/discover/blog/>
- Microsoft Research Blog: <https://www.microsoft.com/en-us/research/blog/>

### 论文、模型与代码

- Hugging Face Papers: <https://huggingface.co/papers>
- Hugging Face Blog: <https://huggingface.co/blog>
- arXiv cs.AI: <https://arxiv.org/list/cs.AI/recent>
- Papers with Code: <https://paperswithcode.com/>
- GitHub Trending: <https://github.com/trending>
- Hugging Face Models: <https://huggingface.co/models>

### 安全与行业资讯

- The Hacker News: <https://thehackernews.com/>

### 深度分析

- The Batch: <https://www.deeplearning.ai/the-batch/>
- Import AI: <https://jack-clark.net/>
- Latent Space: <https://www.latent.space/>

文章详情页必须保持在对应来源的官方域名下。详情链接可以来自页面中的真实链接，但不能通过猜测 URL、搜索结果中的相似域名或第三方转载页生成。

## 日期和链接规则

- 以来源页面实际显示的发布日期为准，不把“昨天”“几小时前”直接改写成确定日期。
- 汇总日期可以是当天，但必须在页面日期说明中注明条目的实际发布日期。
- 每个收录的文章标题都必须链接到原文；没有单篇 URL 时只能记录为来源首页观察。
- 不使用搜索结果摘要替代原文，不编造 URL、发布日期、模型名称或数据。
- 页面无法访问、需要登录、出现验证码或没有当天条目时，在“来源访问与口径说明”中记录原因。

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
- 重点文章使用四级标题并链接到原文。
- 论文榜单、模型趋势和同类批量条目可使用列表，但条目标题仍须附链接。
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
