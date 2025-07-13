# Kimi CC

[中文](README.md) | **English** | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Power your Claude Code with Kimi models from multiple AI service providers, offering low-cost, high-quality AI programming experience.

## 🚀 Supported AI Service Providers

This project supports three AI service providers for you to choose from:

### 1. **Moonshot AI**
- **Model**: kimi-k2-0711-preview
- **API Access**: [Kimi Open Platform](https://platform.moonshot.cn/)
- **Features**: Official service, stable and reliable

### 2. **SiliconFlow**
- **Model**: moonshotai/Kimi-K2-Instruct
- **API Access**: [SiliconFlow Console](https://cloud.siliconflow.cn/account/ak)
- **Features**: High cost-effectiveness, fast response

### 3. **InfiniAI**
- **Model**: mo-dbiof4b73ofzda2r (kimi-k2-instruct)
- **API Access**: [InfiniAI Platform](https://cloud.infini-ai.com/)
- **Features**: Enterprise-grade service, high concurrency support

## 🔧 Quick Installation

### Step 1: Get API Key
According to your chosen service provider, go to the corresponding platform to apply for an API Key:
- **Moonshot AI**: Top right User Center → API Key Management → Create New API Key
- **SiliconFlow**: Console → Account Management → API Keys
- **InfiniAI**: Platform Console → API Key Management

### Step 2: One-Click Installation
Run the installation script, which will prompt you to select a service provider and enter the corresponding API Key:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jiangye1314/kimi-cc/refs/heads/main/install.sh)"
```

### Step 3: Start Using
After installation, you can start using Claude Code at low cost:

```shell
claude
```

## 💡 Usage Instructions

1. **Interactive Selection**: Installation will prompt you to choose a service provider (1-3)
2. **Secure Input**: API Key input process is completely hidden for security
3. **Automatic Configuration**: Script automatically configures corresponding environment variables
4. **Ready to Use**: Immediately usable after configuration

## 🌟 Key Features

- **Multi-Provider Support**: Choose from three premium AI service providers
- **Cost Optimization**: Select the most cost-effective service based on your needs
- **Easy to Use**: One-click installation with no complex configuration
- **High Compatibility**: Fully compatible with original Claude Code functionality 