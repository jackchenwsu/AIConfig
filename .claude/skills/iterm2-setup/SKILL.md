---
name: iterm2-setup
description: Set up a modern macOS terminal with iTerm2, Oh My Zsh, and Powerlevel10k. Use when the user asks to set up iTerm2, configure terminal, install Oh My Zsh, set up Powerlevel10k, install terminal fonts, configure zsh plugins, or wants a modern terminal environment on macOS.
---

# iTerm2 + Oh My Zsh + Powerlevel10k Setup

Complete guide to set up a modern, productive terminal on macOS.

## Prerequisites

- macOS (Intel or Apple Silicon)
- ~15-20 minutes

## Step 1: Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For Apple Silicon, add to PATH after installation:
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Step 2: Install iTerm2

```bash
brew install --cask iterm2
```

**Recommended configuration** (iTerm2 → Settings `Cmd+,`):
- General → Window → Enable native full-screen windows
- Profiles → Default → Window size: 140x40
- Profiles → Default → Working Directory → Set custom path if desired

## Step 3: Install Nerd Fonts

Required for Powerlevel10k icons:
```bash
brew install --cask font-meslo-lg-nerd-font
```

**Set font in iTerm2:**
1. Settings `Cmd+,` → Profiles → Text
2. Font → Select "MesloLGS Nerd Font Mono"
3. Size: 13-14pt recommended

Other popular options:
```bash
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font
```

## Step 4: Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Step 5: Install Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Update `~/.zshrc`:
```bash
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
```

Reload and run configuration wizard:
```bash
source ~/.zshrc
```

If wizard doesn't start automatically: `p10k configure`

## Step 6: Install Essential Plugins

```bash
# Autosuggestions (fish-like suggestions)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Autojump (quick directory navigation)
brew install autojump
```

## Step 7: Configure Plugins

Edit `~/.zshrc` and update the plugins line:
```bash
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    autojump
)
```

Reload: `source ~/.zshrc`

## Color Schemes

Browse schemes at https://iterm2colorschemes.com/

To install a scheme:
1. Download the `.itermcolors` file
2. iTerm2 → Settings → Profiles → Colors → Color Presets → Import

Popular schemes: Dracula, Nord, Solarized Dark, One Dark, Gruvbox

## Useful Shortcuts

| Shortcut | Action |
|----------|--------|
| `Cmd+D` | Split pane vertically |
| `Cmd+Shift+D` | Split pane horizontally |
| `Cmd+[` / `Cmd+]` | Navigate between panes |
| `Ctrl+R` | Search command history |
| `j dirname` | Jump to directory (autojump) |
| `gs` | Git status |
| `take folder` | Create and cd into folder |

## Backup Before Starting

```bash
cp ~/.zshrc ~/.zshrc.backup 2>/dev/null
cp ~/.p10k.zsh ~/.p10k.zsh.backup 2>/dev/null
```

## Troubleshooting

- **Icons not displaying:** Run `p10k configure` and follow font installation
- **Command not found after install:** Restart terminal or run `source ~/.zshrc`
- **Uninstall Oh My Zsh:** `uninstall_oh_my_zsh`
- **Reconfigure Powerlevel10k:** `p10k configure`
