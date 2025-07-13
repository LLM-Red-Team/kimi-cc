# Kimi CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | **Français** | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Utilisez le dernier modèle de Kimi (kimi-k2-0711-preview) pour alimenter votre Claude Code.

## Installation rapide

1. Rendez-vous sur la plateforme ouverte Kimi pour demander une clé API.

Cliquez pour visiter : [Plateforme ouverte Kimi](https://platform.moonshot.cn/)

Coin supérieur droit Centre utilisateur -> Gestion des clés API -> Créer une nouvelle clé API

2. Installation rapide - vous serez invité à saisir votre clé API, puis appuyez sur Entrée pour terminer.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jiangye1314/kimi-cc/refs/heads/main/install.sh)"
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

## Configuration manuelle

Si vous préférez configurer manuellement, définissez ces variables d'environnement :

```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Support

Pour les problèmes ou questions, veuillez visiter la [Plateforme ouverte Kimi](https://platform.moonshot.cn/) ou consultez la documentation originale de Claude Code. 