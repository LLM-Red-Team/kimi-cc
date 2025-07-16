winget install OpenJS.NodeJS
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

# install claude-code
npm install -g @anthropic-ai/claude-code --registry=https://registry.npmmirror.com

node --eval "
    const homeDir = os.homedir(); 
    const filePath = path.join(homeDir, '.claude.json');
    if (fs.existsSync(filePath)) {
        const content = JSON.parse(fs.readFileSync(filePath, 'utf-8'));
        fs.writeFileSync(filePath,JSON.stringify({ ...content, hasCompletedOnboarding: true }, 2), 'utf-8');
    } else {
        fs.writeFileSync(filePath,JSON.stringify({ hasCompletedOnboarding: true }), 'utf-8');
    }"

[Environment]::SetEnvironmentVariable("ANTHROPIC_BASE_URL", "https://api.moonshot.cn/anthropic", "User")
[Environment]::SetEnvironmentVariable("ANTHROPIC_API_KEY", "sk-****", "User")
