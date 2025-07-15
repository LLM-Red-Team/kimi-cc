# Kimi CC

**中文** | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

使用Kimi的最新模型（kimi-k2-0711-preview）驱动您的Claude Code。

[全面调研kimi-k2-0711-preview性能参数](https://unifuncs.com/s/WA1h39Af)

## 快速安装

1. 前往Kimi开放平台申请API Key。

**重要提示：请根据您的API Key来源选择正确的平台**

- **如果您使用中国区API Key**（从 https://platform.moonshot.cn 获取）：
  - 点击前往：[Kimi开放平台（中国站）](https://platform.moonshot.cn/)
  - 右上角用户中心 -> API Key 管理 -> 新建 API Key

- **如果您使用国际区API Key**（从 https://platform.moonshot.ai 获取）：
  - 点击前往：[Kimi Open Platform（国际站）](https://platform.moonshot.ai/)
  - Top right corner User Center -> API Key Management -> Create New API Key


2. 快速安装，会要求您输入 API Key，最终回车即可。

**⚠️ 重要：安装脚本会询问您使用的是哪个站点，请根据您的API Key来源选择正确的选项**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. 开始低成本使用 Claude Code。

```shell
claude
```

## API Key 兼容性说明

**重要提示：中国区和国际区的API Key不兼容**

- 如果您在 https://platform.moonshot.cn 创建的API Key，必须使用 `https://api.moonshot.cn/anthropic/` 作为 base URL
- 如果您在 https://platform.moonshot.ai 创建的API Key，必须使用 `https://api.moonshot.ai/anthropic/` 作为 base URL
- 如果遇到 "Incorrect API key provided" 错误，请检查您的base URL是否与API Key来源匹配

## 手动配置

如果您想手动配置，请根据您的API Key来源设置正确的环境变量：

**中国区用户：**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**国际区用户：**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```
