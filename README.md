# Kimi CC

**中文** | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

使用Kimi的最新模型（kimi-k2-0711-preview）驱动您的Claude Code。

[全面调研kimi-k2-0711-preview性能参数](https://unifuncs.com/s/WA1h39Af)

## 快速安装

1. 前往Kimi开放平台申请API Key。

点击前往：[Kimi开放平台](https://platform.moonshot.cn/)

右上角用户中心 -> API Key 管理 -> 新建 API Key


2. 快速安装，会要求您输入 API Key，最终回车即可。

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. 开始低成本使用 Claude Code。

```shell
claude
```

## 常见问题与调试

### 401 错误（认证失败）

如果遇到 401 错误，有两种解决方法，任选其一：

**方法1：检查环境变量**

运行脚本后，在 `~/.bashrc`（如果使用 zsh 则在 `~/.zshrc`）中检查以下配置是否正确：
- `ANTHROPIC_AUTH_TOKEN` 是否设置正确
- `ANTHROPIC_BASE_URL` 是否设置正确

**方法2：手动配置**

手动在 `~/.claude/settings.json` 中设置：
```json
{
  "ANTHROPIC_AUTH_TOKEN": "你的API密钥",
  "ANTHROPIC_BASE_URL": "根据API生成来源设置"
}
```

**域名配置说明：**
- 如果你的 API 是在 `platform.moonshot.cn` 下生成的，确保 `ANTHROPIC_BASE_URL` 设置为 `api.moonshot.cn/anthropic`
- 否则设置为 `api.moonshot.ai/anthropic`

### 429 错误（请求频率限制）

在官方平台充值最低档即提升并发量即可解决429问题。
