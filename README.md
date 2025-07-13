# Kimi CC

**中文** | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

使用多个AI服务商的Kimi模型驱动您的Claude Code，支持低成本、高质量的AI编程体验。

## 🚀 支持的AI服务商

本项目支持以下三个AI服务商，您可以根据需求选择：

### 1. **Moonshot AI (原月之暗面)**
- **模型**: kimi-k2-0711-preview
- **API获取**: [Kimi开放平台](https://platform.moonshot.cn/)
- **特点**: 官方服务，稳定可靠

### 2. **硅基流动 (SiliconFlow)**
- **模型**: moonshotai/Kimi-K2-Instruct
- **API获取**: [硅基流动控制台](https://cloud.siliconflow.cn/account/ak)
- **特点**: 高性价比，快速响应

### 3. **无问芯穹 (InfiniAI)**
- **模型**: mo-dbiof4b73ofzda2r (kimi-k2-instruct)
- **API获取**: [无问芯穹平台](https://cloud.infini-ai.com/)
- **特点**: 企业级服务，高并发支持

## 🔧 快速安装

### 步骤1：获取API Key
根据您选择的服务商，前往对应平台申请API Key：
- **Moonshot AI**: 右上角用户中心 → API Key 管理 → 新建 API Key
- **硅基流动**: 控制台 → 账户管理 → API密钥
- **无问芯穹**: 平台控制台 → API密钥管理

### 步骤2：一键安装
运行安装脚本，会提示您选择服务商并输入对应的API Key：

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jiangye1314/kimi-cc/refs/heads/main/install.sh)"
```

### 步骤3：开始使用
安装完成后，即可开始低成本使用Claude Code：

```shell
claude
```

## 💡 使用说明

1. **交互式选择**: 安装时会提示您选择服务商（1-3）
2. **安全输入**: API Key输入过程完全隐藏，确保安全
3. **自动配置**: 脚本会自动配置对应的环境变量
4. **即开即用**: 配置完成后立即可以使用Claude Code

## 🌟 特色功能

- **多服务商支持**: 三个优质AI服务商任您选择
- **成本优化**: 根据需求选择最具性价比的服务
- **简单易用**: 一键安装，无需复杂配置
- **兼容性强**: 完全兼容原有Claude Code功能
