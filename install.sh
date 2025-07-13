#!/bin/bash

set -e

install_nodejs() {
    local platform=$(uname -s)
    
    case "$platform" in
        Linux|Darwin)
            echo "🚀 Installing Node.js on Unix/Linux/macOS..."
            
            echo "📥 Downloading and installing nvm..."
            curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
            
            echo "🔄 Loading nvm environment..."
            \. "$HOME/.nvm/nvm.sh"
            
            echo "📦 Downloading and installing Node.js LTS..."
            nvm install --lts
            nvm use --lts
            nvm alias default --lts
            
            echo -n "✅ Node.js installation completed! Version: "
            node -v
            echo -n "✅ Current nvm version: "
            nvm current
            echo -n "✅ npm version: "
            npm -v
            ;;
        *)
            echo "Unsupported platform: $platform"
            exit 1
            ;;
    esac
}

# Check if Node.js is already installed and version is >= 18
if command -v node >/dev/null 2>&1; then
    current_version=$(node -v | sed 's/v//')
    major_version=$(echo $current_version | cut -d. -f1)
    
    if [ "$major_version" -ge 18 ]; then
        echo "Node.js is already installed: v$current_version"
    else
        echo "Node.js v$current_version is installed but version < 18. Upgrading..."
        install_nodejs
    fi
else
    echo "Node.js not found. Installing..."
    install_nodejs
fi

# Check if Claude Code is already installed
if command -v claude >/dev/null 2>&1; then
    echo "Claude Code is already installed: $(claude --version)"
else
    echo "Claude Code not found. Installing..."
    npm install -g @anthropic-ai/claude-code
    
    # Verify installation
    if ! command -v claude >/dev/null 2>&1; then
        echo "❌ Error: Claude Code installation failed. Please check your npm configuration."
        exit 1
    fi
    echo "✅ Claude Code installed successfully: $(claude --version)"
fi

# Configure Claude Code to skip onboarding
echo "Configuring Claude Code to skip onboarding..."
if ! node --eval '
  const fs   = require("fs"),
        os   = require("os"),
        path = require("path");
  const fp = path.join(os.homedir(), ".claude.json");
  let obj = {};
  if (fs.existsSync(fp)) {
    obj = JSON.parse(fs.readFileSync(fp, "utf-8"));
  }
  obj.hasCompletedOnboarding = true;
  fs.writeFileSync(fp, JSON.stringify(obj, null, 2), "utf-8");
'; then
    echo "⚠️ Warning: Failed to configure Claude Code onboarding. You may need to complete onboarding manually."
fi

# Prompt user for API key
echo "🔑 Please enter your Moonshot API key:"
echo "   You can get your API key from: https://platform.moonshot.cn/console/api-keys"
echo "   Note: The input is hidden for security. Please paste your API key directly."
echo ""
read -s api_key
echo ""

if [ -z "$api_key" ]; then
    echo "⚠️  API key cannot be empty. Please run the script again."
    exit 1
fi

# Detect current shell and determine rc file
current_shell=$(basename "$SHELL")
case "$current_shell" in
    bash)
        rc_file="$HOME/.bashrc"
        ;;
    zsh)
        rc_file="$HOME/.zshrc"
        ;;
    fish)
        rc_file="$HOME/.config/fish/config.fish"
        ;;
    *)
        rc_file="$HOME/.profile"
        ;;
esac

# Add environment variables to rc file
echo ""
echo "📝 Adding environment variables to $rc_file..."

# Check if variables already exist to avoid duplicates
if [ -f "$rc_file" ] && grep -q "ANTHROPIC_BASE_URL\|ANTHROPIC_API_KEY" "$rc_file"; then
    echo "⚠️ Environment variables already exist in $rc_file. Skipping..."
else
    # Append new entries
    echo "" >> "$rc_file"
    echo "# Claude Code environment variables" >> "$rc_file"
    if [ "$current_shell" = fish ]; then
      echo "set -Ux ANTHROPIC_BASE_URL https://api.moonshot.cn/anthropic/" >> "$rc_file"
      echo "set -Ux ANTHROPIC_API_KEY '$api_key'"                  >> "$rc_file"
    else
      echo "export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic/" >> "$rc_file"
      echo "export ANTHROPIC_API_KEY='$api_key'"                         >> "$rc_file"
    fi
    echo "✅ Environment variables added to $rc_file"
fi

echo ""
echo "🎉 Installation completed successfully!"
echo ""
if [ "$current_shell" = "fish" ]; then
    echo "🔄 Please restart your terminal or run:"
    echo "   source $rc_file"
    echo "   (Note: Fish universal variables may require a terminal restart)"
else
    echo "🔄 Please restart your terminal or run:"
    echo "   source $rc_file"
fi
echo ""
echo "🚀 Then you can start using Claude Code with:"
echo "   claude"