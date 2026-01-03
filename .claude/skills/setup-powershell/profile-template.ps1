# ============================================
# PowerShell Profile for C#/.NET Development
# ============================================

# --- Oh My Posh Prompt ---
# Change the theme URL to use a different theme
# Browse themes: https://ohmyposh.dev/docs/themes
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/powerlevel10k_rainbow.omp.json' | Invoke-Expression

# --- Module Imports ---
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module z

# --- PSReadLine Configuration ---
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# --- .NET CLI Auto-completion ---
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
    dotnet complete --position $cursorPosition "$commandAst" | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}

# --- Git Aliases ---
function gs { git status }
function ga { git add $args }
function gaa { git add --all }
function gc { git commit -m $args }
function gp { git push }
function gpl { git pull }
function gco { git checkout $args }
function gcb { git checkout -b $args }
function gl { git log --oneline -20 }
function gd { git diff $args }
function gb { git branch $args }

# --- .NET Aliases ---
function dn { dotnet $args }
function dnr { dotnet run }
function dnb { dotnet build }
function dnt { dotnet test }
function dnw { dotnet watch run }
function dnc { dotnet clean }
function dnre { dotnet restore }
function dnnew { dotnet new $args }
function dnef { dotnet ef $args }

# --- Useful Functions ---

# Quick project creation - creates project and opens in VS Code
function New-DotNetProject {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Name,
        [string]$Template = "console"
    )
    dotnet new $Template -n $Name
    Set-Location $Name
    code .
}
Set-Alias -Name newproj -Value New-DotNetProject

# Open solution in Visual Studio
function Open-Solution {
    $sln = Get-ChildItem -Filter "*.sln" | Select-Object -First 1
    if ($sln) { Start-Process $sln.FullName }
    else { Write-Host "No .sln file found" -ForegroundColor Red }
}
Set-Alias -Name vs -Value Open-Solution

# Enhanced directory listing
function ll { Get-ChildItem -Force $args }
function la { Get-ChildItem -Force -Hidden $args }

# Find files quickly
function ff { Get-ChildItem -Recurse -Filter "*$args*" }

# Profile management
function Edit-Profile { code $PROFILE }
function Reload-Profile { . $PROFILE }

# --- Environment Variables ---
$env:DOTNET_CLI_TELEMETRY_OPTOUT = 1

# --- Startup Message ---
Write-Host "PowerShell $($PSVersionTable.PSVersion) | .NET $(dotnet --version)" -ForegroundColor Cyan
