# Kimi CC

[中文](README.md) | **English** | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Use Kimi's latest model (kimi-k2-0711-preview) to power your Claude Code.

## Quick Installation

1. Go to Kimi Open Platform to apply for an API Key.

Click to visit: [Kimi Open Platform](https://platform.moonshot.cn/)

Top right corner User Center -> API Key Management -> Create New API Key

2. Quick installation - you will be prompted to enter your API Key, then press Enter to complete.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. Start using Claude Code at low cost.

```shell
claude
```

## Features

- **Cost-effective**: Use Kimi's competitive pricing instead of direct Anthropic API
- **Easy setup**: One-command installation with automatic configuration
- **Seamless integration**: Works with existing Claude Code workflows
- **Latest model**: Powered by Kimi's kimi-k2-0711-preview model

## What the installer does

The installation script automatically:
1. Checks and installs Node.js (v18+) if needed
2. Installs Claude Code globally via npm
3. Configures Claude Code to skip onboarding
4. Prompts for your Moonshot API key
5. Sets up environment variables to redirect API calls to Kimi's servers

## Manual Configuration

If you prefer to configure manually, set these environment variables:

```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Support

For issues or questions, please visit the [Kimi Open Platform](https://platform.moonshot.ai/) or check the original Claude Code documentation. 
