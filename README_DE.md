# Kimi CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | **Deutsch** | [Español](README_ES.md) | [Русский](README_RU.md)

Verwenden Sie Kimis neuestes Modell (kimi-k2-0711-preview), um Ihren Claude Code zu betreiben.

## Schnelle Installation

1. Gehen Sie zur Kimi Open Platform, um einen API-Schlüssel zu beantragen.

**Wichtig: Bitte wählen Sie die richtige Plattform basierend auf der Quelle Ihres API-Schlüssels**

- **Wenn Sie einen API-Schlüssel für die China-Region haben** (von https://platform.moonshot.cn erhalten):
  - Klicken Sie hier: [Kimi Open Platform (China)](https://platform.moonshot.cn/)
  - Rechts oben Benutzerzentrum -> API-Schlüssel-Verwaltung -> Neuen API-Schlüssel erstellen

- **Wenn Sie einen API-Schlüssel für die internationale Region haben** (von https://platform.moonshot.ai erhalten):
  - Klicken Sie hier: [Kimi Open Platform (International)](https://platform.moonshot.ai/)
  - User Center -> API Keys -> Create API Key

2. Schnelle Installation - Sie werden aufgefordert, Ihren API-Schlüssel einzugeben und Ihre Region auszuwählen, dann drücken Sie Enter zum Abschluss.

**⚠️ Wichtig: Das Installationsprogramm fragt, welche Plattform Sie verwenden - bitte wählen Sie die richtige Option basierend auf der Quelle Ihres API-Schlüssels**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. Beginnen Sie mit der kostengünstigen Nutzung von Claude Code.

```shell
claude
```

## Funktionen

- **Kosteneffektiv**: Verwenden Sie Kimis wettbewerbsfähige Preise anstelle der direkten Anthropic-API
- **Einfache Einrichtung**: Ein-Befehl-Installation mit automatischer Konfiguration
- **Nahtlose Integration**: Funktioniert mit bestehenden Claude Code-Workflows
- **Neuestes Modell**: Angetrieben von Kimis kimi-k2-0711-preview-Modell

## Was der Installer macht

Das Installationsskript führt automatisch aus:
1. Überprüft und installiert Node.js (v18+) bei Bedarf
2. Installiert Claude Code global über npm
3. Konfiguriert Claude Code, um das Onboarding zu überspringen
4. Fordert Ihren Moonshot-API-Schlüssel an
5. Richtet Umgebungsvariablen ein, um API-Aufrufe an Kimis Server umzuleiten

## API-Schlüssel-Kompatibilität

**Wichtig: API-Schlüssel der China-Region und der internationalen Region sind NICHT kompatibel**

- Wenn Sie Ihren API-Schlüssel auf https://platform.moonshot.cn erstellt haben, MÜSSEN Sie `https://api.moonshot.cn/anthropic/` als Basis-URL verwenden
- Wenn Sie Ihren API-Schlüssel auf https://platform.moonshot.ai erstellt haben, MÜSSEN Sie `https://api.moonshot.ai/anthropic/` als Basis-URL verwenden
- Wenn Sie den Fehler "Incorrect API key provided" erhalten, überprüfen Sie bitte, ob Ihre Basis-URL mit der Quelle Ihres API-Schlüssels übereinstimmt

## Manuelle Konfiguration

Wenn Sie manuell konfigurieren möchten, setzen Sie die richtigen Umgebungsvariablen basierend auf der Quelle Ihres API-Schlüssels:

**China-Region Benutzer:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**Internationale Region Benutzer:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Support

Bei Problemen oder Fragen besuchen Sie bitte die [Kimi Open Platform](https://platform.moonshot.cn/) oder überprüfen Sie die ursprüngliche Claude Code-Dokumentation. 