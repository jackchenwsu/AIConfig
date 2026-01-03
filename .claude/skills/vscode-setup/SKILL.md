---
name: vscode-setup
description: Set up VS Code with productivity settings, extensions, keybindings, and fonts. Use when the user asks to configure VS Code, install VS Code extensions, set up development environment, or optimize VS Code for productivity. Supports C#, Java, PowerShell, and Python development.
---

# VS Code Productivity Setup Skill

This skill sets up VS Code with optimized settings, essential extensions, keybindings, and programming fonts for C#, Java, PowerShell, and Python development.

## Instructions

When the user asks to set up VS Code, follow these steps:

### Step 1: Ask User Preferences

Use AskUserQuestion to clarify:
1. Which languages they primarily use (C#, Java, PowerShell, Python, or all)
2. Whether they want to install a programming font (JetBrains Mono)
3. Whether they want to preserve existing settings or start fresh

### Step 2: Install Extensions

Install extensions based on user's language preferences. Run these commands in parallel using Bash:

**Core Productivity (always install):**
```bash
code --install-extension eamodio.gitlens
code --install-extension usernamehw.errorlens
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension gruntfuggly.todo-tree
code --install-extension alefragnani.bookmarks
code --install-extension alefragnani.project-manager
code --install-extension aaron-bond.better-comments
code --install-extension pkief.material-icon-theme
code --install-extension anthropic.claude-code
```

**C# Extensions:**
```bash
code --install-extension ms-dotnettools.csdevkit
```

**Java Extensions:**
```bash
code --install-extension vscjava.vscode-java-pack
```

**PowerShell Extensions:**
```bash
code --install-extension ms-vscode.powershell
```

**Python Extensions:**
```bash
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.black-formatter
code --install-extension charliermarsh.ruff
```

### Step 3: Configure Settings

Read the user's existing settings.json first:
- macOS: `~/Library/Application Support/Code/User/settings.json`
- Windows: `%APPDATA%\Code\User\settings.json`
- Linux: `~/.config/Code/User/settings.json`

Then write the complete settings using the template in [settings-template.md](settings-template.md).

### Step 4: Configure Keybindings

Create keybindings.json using the template in [keybindings-template.md](keybindings-template.md).

Location:
- macOS: `~/Library/Application Support/Code/User/keybindings.json`
- Windows: `%APPDATA%\Code\User\keybindings.json`
- Linux: `~/.config/Code/User/keybindings.json`

### Step 5: Install Font (Optional)

If user wants JetBrains Mono:

**macOS:**
```bash
brew install --cask font-jetbrains-mono
```

**Windows (PowerShell as Admin):**
```powershell
choco install jetbrainsmono -y
# Or manual download from https://www.jetbrains.com/lp/mono/
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install fonts-jetbrains-mono
# Or download from https://www.jetbrains.com/lp/mono/
```

### Step 6: Summary

After completion, provide a summary table showing:
- Extensions installed vs already installed
- Settings file location
- Keybindings file location
- Font installation status
- Reminder to restart VS Code

## Key Features Configured

### Editor Settings
- JetBrains Mono font with ligatures
- Format on save enabled
- Bracket pair colorization
- Sticky scroll
- Smooth scrolling and cursor animation
- Column rulers at 80 and 120 characters

### Language-Specific Settings
- **C#**: Roslyn analyzers, organize imports on save
- **Java**: GoogleStyle formatting, 4GB memory, organize imports
- **PowerShell**: OTBS style, auto-correct aliases, script analysis
- **Python**: Black formatter, Ruff linter, type checking

### Productivity Features
- GitLens for enhanced Git integration
- Error Lens for inline error display
- Todo Tree for tracking TODOs/FIXMEs
- Bookmarks for code navigation
- Project Manager for switching projects
- Better Comments for colorized comments

### Keybindings
- Navigation: `Cmd+[`/`Cmd+]` for back/forward
- Line operations: `Cmd+Shift+D` duplicate, `Cmd+Shift+K` delete
- Code actions: `Cmd+.` quick fix, `F2` rename
- Bookmarks: `Cmd+Alt+K` toggle, `Cmd+Alt+J/L` navigate
- Debugging: `F5` start, `F9` breakpoint, `F10/F11` step

## Customization Notes

- Settings preserve user's existing configuration when possible
- Project Manager is configured to scan `~/Documents/git` by default
- Telemetry is disabled for privacy
- Auto-fetch for Git is enabled
