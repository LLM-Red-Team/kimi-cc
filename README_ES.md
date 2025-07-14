# Kimi CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | **Español** | [Русский](README_RU.md)

Usa el último modelo de Kimi (kimi-k2-0711-preview) para impulsar tu Claude Code.

## Instalación rápida

1. Ve a la plataforma abierta Kimi para solicitar una clave API.

**Importante: Por favor elige la plataforma correcta según la fuente de tu clave API**

- **Si tienes una clave API de la región China** (obtenida desde https://platform.moonshot.cn):
  - Haz clic para visitar: [Kimi Open Platform (China)](https://platform.moonshot.cn/)
  - Esquina superior derecha Centro de usuario -> Gestión de claves API -> Crear nueva clave API

- **Si tienes una clave API de la región Internacional** (obtenida desde https://platform.moonshot.ai):
  - Haz clic para visitar: [Kimi Open Platform (Internacional)](https://platform.moonshot.ai/)
  - User Center -> API Keys -> Create API Key

2. Instalación rápida - se te pedirá que ingreses tu clave API y selecciones tu región, luego presiona Enter para completar.

**⚠️ Importante: El instalador te preguntará qué plataforma estás usando - por favor selecciona la opción correcta según la fuente de tu clave API**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. Comienza a usar Claude Code a bajo costo.

```shell
claude
```

## Características

- **Rentable**: Usa los precios competitivos de Kimi en lugar de la API directa de Anthropic
- **Configuración fácil**: Instalación de un comando con configuración automática
- **Integración perfecta**: Funciona con flujos de trabajo existentes de Claude Code
- **Modelo más reciente**: Impulsado por el modelo kimi-k2-0711-preview de Kimi

## Lo que hace el instalador

El script de instalación automáticamente:
1. Verifica e instala Node.js (v18+) si es necesario
2. Instala Claude Code globalmente a través de npm
3. Configura Claude Code para saltar la incorporación
4. Solicita tu clave API de Moonshot
5. Configura variables de entorno para redirigir llamadas API a los servidores de Kimi

## Compatibilidad de claves API

**Importante: Las claves API de las regiones China e Internacional NO son compatibles**

- Si creaste tu clave API en https://platform.moonshot.cn, DEBES usar `https://api.moonshot.cn/anthropic/` como URL base
- Si creaste tu clave API en https://platform.moonshot.ai, DEBES usar `https://api.moonshot.ai/anthropic/` como URL base
- Si encuentras el error "Incorrect API key provided", verifica si tu URL base coincide con la fuente de tu clave API

## Configuración manual

Si prefieres configurar manualmente, establece las variables de entorno correctas según la fuente de tu clave API:

**Usuarios de la región China:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**Usuarios de la región Internacional:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Soporte

Para problemas o preguntas, visita la [Plataforma abierta Kimi](https://platform.moonshot.cn/) o consulta la documentación original de Claude Code. 