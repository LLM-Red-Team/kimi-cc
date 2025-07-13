# Kimi CC

[中文](README.md) | [English](README_EN.md) | **日本語** | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Kimiの最新モデル（kimi-k2-0711-preview）を使用してClaude Codeを駆動します。

## クイックインストール

1. Kimi Open PlatformでAPI Keyを申請してください。

こちらをクリック：[Kimi Open Platform](https://platform.moonshot.cn/)

右上角のユーザーセンター -> API Key管理 -> 新しいAPI Keyを作成

2. クイックインストール - API Keyの入力を求められますので、最後にEnterを押してください。

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jiangye1314/kimi-cc/refs/heads/main/install.sh)"
```

3. 低コストでClaude Codeの使用を開始します。

```shell
claude
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