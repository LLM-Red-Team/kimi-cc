# Kimi CC

[中文](README.md) | [English](README_EN.md) | **日本語** | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Kimiの最新モデル（kimi-k2-0711-preview）を使用してClaude Codeを駆動します。

## クイックインストール

1. Kimi Open PlatformでAPI Keyを申請してください。

**重要：API Keyの出所に基づいて正しいプラットフォームを選択してください**

- **中国地域のAPI Keyをお持ちの場合**（https://platform.moonshot.cn から取得）：
  - こちらをクリック：[Kimi Open Platform（中国）](https://platform.moonshot.cn/)
  - 右上角のユーザーセンター -> API Key管理 -> 新しいAPI Keyを作成

- **国際地域のAPI Keyをお持ちの場合**（https://platform.moonshot.ai から取得）：
  - こちらをクリック：[Kimi Open Platform（国際）](https://platform.moonshot.ai/)
  - User Center -> API Keys -> Create API Key

2. クイックインストール - API Keyの入力と地域の選択を求められますので、最後にEnterを押してください。

**⚠️ 重要：インストーラーは使用しているプラットフォームを尋ねます - API Keyの出所に基づいて正しいオプションを選択してください**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. 低コストでClaude Codeの使用を開始します。

```shell
claude
```

## API Key互換性について

**重要：中国地域と国際地域のAPI Keyは互換性がありません**

- https://platform.moonshot.cnで作成したAPI Keyの場合、`https://api.moonshot.cn/anthropic/`をbase URLとして使用する必要があります
- https://platform.moonshot.aiで作成したAPI Keyの場合、`https://api.moonshot.ai/anthropic/`をbase URLとして使用する必要があります
- "Incorrect API key provided"エラーが発生した場合は、base URLがAPI Keyの出所と一致しているか確認してください

## 手動構成

手動で構成したい場合は、API Keyの出所に基づいて正しい環境変数を設定してください：

**中国地域ユーザー：**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**国際地域ユーザー：**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## 機能

- **コスト効率**: Anthropic APIの代わりにKimiの競争力のある価格設定を使用
- **簡単セットアップ**: 自動構成による1コマンドインストール
- **シームレス統合**: 既存のClaude Codeワークフローと連携
- **最新モデル**: Kimiのkimi-k2-0711-previewモデルを使用

## インストーラーの動作

インストールスクリプトは自動的に以下を実行します：
1. Node.js（v18+）をチェックし、必要に応じてインストール
2. npmを介してClaude Codeをグローバルにインストール
3. オンボーディングをスキップするようにClaude Codeを構成
4. Moonshot API keyの入力を促す
5. API呼び出しをKimiのサーバーにリダイレクトする環境変数を設定

## 手動構成

手動で構成したい場合は、以下の環境変数を設定してください：

```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## サポート

問題や質問については、[Kimi Open Platform](https://platform.moonshot.cn/)をご覧いただくか、元のClaude Codeドキュメントをご確認ください。 