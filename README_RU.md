# Kimi CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | **Русский**

Используйте последнюю модель Kimi (kimi-k2-0711-preview) для работы с Claude Code.

## Быстрая установка

1. Перейдите на открытую платформу Kimi, чтобы подать заявку на API ключ.

**Важно: Пожалуйста, выберите правильную платформу в зависимости от источника вашего API ключа**

- **Если у вас есть API ключ региона Китай** (полученный с https://platform.moonshot.cn):
  - Нажмите для перехода: [Kimi Open Platform (Китай)](https://platform.moonshot.cn/)
  - Правый верхний угол Центр пользователя -> Управление API ключами -> Создать новый API ключ

- **Если у вас есть API ключ международного региона** (полученный с https://platform.moonshot.ai):
  - Нажмите для перехода: [Kimi Open Platform (Международный)](https://platform.moonshot.ai/)
  - User Center -> API Keys -> Create API Key

2. Быстрая установка - вам будет предложено ввести ваш API ключ и выбрать регион, затем нажмите Enter для завершения.

**⚠️ Важно: Установщик спросит, какую платформу вы используете - пожалуйста, выберите правильный вариант в зависимости от источника вашего API ключа**

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LLM-Red-Team/kimi-cc/refs/heads/main/install.sh)"
```

3. Начните использовать Claude Code с низкими затратами.

```shell
claude
```

## Особенности

- **Экономически эффективно**: Используйте конкурентоспособные цены Kimi вместо прямого API Anthropic
- **Простая настройка**: Установка одной командой с автоматической конфигурацией
- **Бесшовная интеграция**: Работает с существующими рабочими процессами Claude Code
- **Последняя модель**: Работает на модели kimi-k2-0711-preview от Kimi

## Что делает установщик

Скрипт установки автоматически:
1. Проверяет и устанавливает Node.js (v18+) при необходимости
2. Устанавливает Claude Code глобально через npm
3. Настраивает Claude Code для пропуска введения
4. Запрашивает ваш API ключ Moonshot
5. Настраивает переменные среды для перенаправления API вызовов на серверы Kimi

## Совместимость API ключей

**Важно: API ключи регионов Китай и Международный НЕ совместимы**

- Если вы создали свой API ключ на https://platform.moonshot.cn, вы ДОЛЖНЫ использовать `https://api.moonshot.cn/anthropic/` как базовый URL
- Если вы создали свой API ключ на https://platform.moonshot.ai, вы ДОЛЖНЫ использовать `https://api.moonshot.ai/anthropic/` как базовый URL
- Если вы столкнулись с ошибкой "Incorrect API key provided", пожалуйста, проверьте, соответствует ли ваш базовый URL источнику вашего API ключа

## Ручная конфигурация

Если вы предпочитаете настроить вручную, установите правильные переменные среды в зависимости от источника вашего API ключа:

**Пользователи региона Китай:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

**Пользователи международного региона:**
```bash
export ANTHROPIC_BASE_URL=https://api.moonshot.ai/anthropic/
export ANTHROPIC_API_KEY=your_moonshot_api_key_here
```

## Поддержка

По вопросам или проблемам посетите [Открытую платформу Kimi](https://platform.moonshot.cn/) или ознакомьтесь с оригинальной документацией Claude Code. 