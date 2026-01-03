---
name: setup-powershell
description: Set up a customized PowerShell development environment on Windows. Use when the user asks to configure PowerShell, install Oh My Posh, set up terminal customization, or optimize PowerShell for C#/.NET development. Includes prompt themes, Git aliases, .NET aliases, and productivity tools.
---

# PowerShell Development Environment Setup Skill

This skill sets up a fully customized PowerShell environment for C#/.NET development on Windows with Oh My Posh, useful modules, aliases, and terminal configuration.

## Instructions

When the user asks to set up PowerShell, follow these steps:

### Step 1: Ask User Preferences

Use AskUserQuestion to clarify:
1. Which Oh My Posh theme they prefer (powerlevel10k_rainbow, agnoster, paradox, robbyrussell, or other)
2. Whether they want to install a Nerd Font (required for icons)
3. Whether they want all aliases (Git + .NET) or just specific ones
4. Whether they want to configure Windows Terminal settings

### Step 2: Check Prerequisites

Verify PowerShell 7+ is installed:
```bash
pwsh --version
```

If not installed:
```bash
winget install --id Microsoft.PowerShell --source winget --accept-source-agreements --accept-package-agreements
```

### Step 3: Install Oh My Posh

```bash
winget install JanDeDobbeleer.OhMyPosh -s winget --accept-source-agreements --accept-package-agreements
```

### Step 4: Install PowerShell Modules

Run in PowerShell:
```powershell
Install-Module -Name PSReadLine -Force -SkipPublisherCheck
Install-Module -Name posh-git -Force
Install-Module -Name Terminal-Icons -Force
Install-Module -Name z -Force
```

### Step 5: Install Nerd Font (if requested)

Download and install JetBrainsMono Nerd Font using the script in [install-font.ps1](install-font.ps1).

Or use winget if available:
```bash
winget install DEVCOM.JetBrainsMonoNerdFont
```

### Step 6: Create PowerShell Profile

Get the profile path:
```powershell
$PROFILE
```

Create/update the profile using the template in [profile-template.ps1](profile-template.ps1).

Customize the Oh My Posh theme URL based on user's preference:
- `powerlevel10k_rainbow.omp.json` - Colorful with lots of info (default)
- `agnoster.omp.json` - Classic powerline style
- `paradox.omp.json` - Colorful with git info
- `robbyrussell.omp.json` - Simple, oh-my-zsh inspired
- `night-owl.omp.json` - Dark theme

Theme URL format: `https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/{theme-name}.omp.json`

### Step 7: Configure Windows Terminal (if requested)

Find settings.json:
```
%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

Update:
1. Set `defaultProfile` to PowerShell 7: `{574e775e-4f2a-5b96-ac1e-a2962a402336}`
2. Add to `profiles.defaults`:
```json
{
    "font": {
        "face": "JetBrainsMono Nerd Font",
        "size": 11
    },
    "colorScheme": "One Half Dark",
    "opacity": 95,
    "useAcrylic": true
}
```

### Step 8: Summary

After completion, provide:
- List of installed modules
- Profile file location
- Reminder to restart terminal or run `. $PROFILE`
- Quick reference of available aliases

## Components Installed

### Oh My Posh
Beautiful, customizable prompt with:
- Git branch and status
- Execution time
- Error indicators
- Custom segments

### PowerShell Modules
| Module | Purpose |
|--------|---------|
| posh-git | Git integration & tab completion |
| Terminal-Icons | File/folder icons in ls output |
| z | Smart directory jumping |
| PSReadLine | Predictive IntelliSense |

### Git Aliases
| Alias | Command |
|-------|---------|
| `gs` | git status |
| `ga` | git add |
| `gaa` | git add --all |
| `gc` | git commit -m |
| `gp` | git push |
| `gpl` | git pull |
| `gco` | git checkout |
| `gcb` | git checkout -b |
| `gl` | git log --oneline -20 |
| `gd` | git diff |
| `gb` | git branch |

### .NET Aliases
| Alias | Command |
|-------|---------|
| `dn` | dotnet |
| `dnr` | dotnet run |
| `dnb` | dotnet build |
| `dnt` | dotnet test |
| `dnw` | dotnet watch run |
| `dnc` | dotnet clean |
| `dnre` | dotnet restore |
| `dnnew` | dotnet new |
| `dnef` | dotnet ef |

### Utility Functions
| Function | Description |
|----------|-------------|
| `newproj Name` | Create new .NET project and open in VS Code |
| `vs` | Open .sln file in Visual Studio |
| `ll` | List files with hidden |
| `la` | List hidden files only |
| `ff pattern` | Find files recursively |
| `Edit-Profile` | Open profile in VS Code |
| `Reload-Profile` | Reload profile without restart |

## Troubleshooting

### "CONFIG NOT FOUND" Error
The Oh My Posh theme path is incorrect. Use a direct URL instead of `$env:POSH_THEMES_PATH`:
```powershell
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/powerlevel10k_rainbow.omp.json' | Invoke-Expression
```

### Icons Display as Boxes
The Nerd Font is not installed or not set in terminal:
1. Install JetBrainsMono Nerd Font
2. Set font in Windows Terminal: Settings → Profiles → Defaults → Font face

### Slow Profile Load
Comment out modules you don't need. The `z` module can be slow on first load as it builds its database.
