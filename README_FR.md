# Kimi CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | **Français** | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Utilisez le dernier modèle de Kimi (kimi-k2-0711-preview) pour alimenter votre Claude Code.

## Installation rapide

1. Rendez-vous sur la plateforme ouverte Kimi pour demander une clé API.

**Important : Veuillez choisir la bonne plateforme selon la source de votre clé API**

- **Si vous avez une clé API de la région Chine** (obtenue depuis https://platform.moonshot.cn) :
  - Cliquez pour visiter : [Kimi Open Platform (Chine)](https://platform.moonshot.cn/)
  - Coin supérieur droit Centre utilisateur -> Gestion des clés API -> Créer une nouvelle clé API

- **Si vous avez une clé API de la région Internationale** (obtenue depuis https://platform.moonshot.ai) :
  - Cliquez pour visiter : [Kimi Open Platform (Internationale)](https://platform.moonshot.ai/)
  - User Center -> API Keys -> Create API Key

2. Installation rapide - vous serez invité à entrer votre clé API et à sélectionner votre région, puis appuyez sur Entrée pour terminer.

**⚠️ Important : Le programme d'installation vous demandera quelle plateforme vous utilisez - veuillez choisir l'option correcte selon la source de votre clé API**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. Commencez à utiliser Claude Code à faible coût.

```shell
claude
```

## Fonctionnalités

- **Rentable** : Utilisez les prix compétitifs de Kimi au lieu de l'API Anthropic directe
- **Configuration facile** : Installation en une commande avec configuration automatique
- **Intégration transparente** : Fonctionne avec les flux de travail Claude Code existants
- **Modèle le plus récent** : Alimenté par le modèle kimi-k2-0711-preview de Kimi

## Ce que fait l'installateur

Le script d'installation fait automatiquement :
1. Vérifie et installe Node.js (v18+) si nécessaire
2. Installe Claude Code globalement via npm
3. Configure Claude Code pour ignorer l'intégration
4. Demande votre clé API Moonshot
5. Configure les variables d'environnement pour rediriger les appels API vers les serveurs de Kimi

## Compatibilité des clés API

**Important : Les clés API des régions Chine et Internationale ne sont PAS compatibles**

- Si vous avez créé votre clé API sur https://platform.moonshot.cn, vous DEVEZ utiliser `https://api.moonshot.cn/anthropic/` comme URL de base
- Si vous avez créé votre clé API sur https://platform.moonshot.ai, vous DEVEZ utiliser `https://api.moonshot.ai/anthropic/` comme URL de base
- Si vous rencontrez l'erreur "Incorrect API key provided", vérifiez si votre URL de base correspond à la source de votre clé API

## Configuration manuelle

Si vous préférez configurer manuellement, définissez les variables d'environnement correctes selon la source de votre clé API :

**Utilisateurs de la région Chine :**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**Utilisateurs de la région Internationale :**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Support

Pour les problèmes ou questions, veuillez visiter la [Plateforme ouverte Kimi](https://platform.moonshot.cn/) ou consultez la documentation originale de Claude Code. 