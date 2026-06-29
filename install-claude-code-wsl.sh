sudo apt update && sudo apt upgrade -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 


nvm install --lts

npm config set allow-scripts=@anthropic-ai/claude-code --location=user
npm install -g @anthropic-ai/claude-code

curl -LsSf https://astral.sh/uv/install.sh | sh

source $HOME/.local/bin/env 


mkdir -p ~/.claude && cat > ~/.claude/settings.json << 'EOF'
{
  "env": {
    "ANTHROPIC_AUTH_TOKEN": "[my key]",
    "ANTHROPIC_BASE_URL": "https://open.bigmodel.cn/api/anthropic",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-4.7",
    "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-5.2[1m]",
    "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-5.2[1m]",
    "CLAUDE_CODE_AUTO_COMPACT_WINDOW": "1000000",
    "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
    "API_TIMEOUT_MS": "3000000"
  },
  "theme": "dark"
}
EOF
