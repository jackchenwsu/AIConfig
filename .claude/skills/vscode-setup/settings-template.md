# VS Code Settings Template

Use this template when creating settings.json. Preserve any existing user settings at the top.

## Complete Settings Template

```json
{
    // ============================================================
    // USER'S EXISTING SETTINGS (preserve from original file)
    // ============================================================

    // ============================================================
    // EDITOR - Core Settings
    // ============================================================
    "editor.fontSize": 14,
    "editor.fontFamily": "'JetBrains Mono', 'Fira Code', Menlo, Monaco, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "editor.tabSize": 4,
    "editor.insertSpaces": true,
    "editor.detectIndentation": true,
    "editor.formatOnSave": true,
    "editor.formatOnPaste": false,
    "editor.wordWrap": "off",
    "editor.minimap.enabled": false,
    "editor.renderWhitespace": "selection",
    "editor.cursorBlinking": "smooth",
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.smoothScrolling": true,
    "editor.linkedEditing": true,
    "editor.bracketPairColorization.enabled": true,
    "editor.guides.bracketPairs": true,
    "editor.stickyScroll.enabled": true,
    "editor.inlineSuggest.enabled": true,
    "editor.suggestSelection": "first",
    "editor.acceptSuggestionOnCommitCharacter": true,
    "editor.quickSuggestions": {
        "other": true,
        "comments": false,
        "strings": false
    },
    "editor.parameterHints.enabled": true,
    "editor.hover.delay": 300,
    "editor.rulers": [80, 120],
    "editor.scrollBeyondLastLine": true,
    "editor.mouseWheelZoom": true,

    // ============================================================
    // FILES - Auto-save & Cleanup
    // ============================================================
    "files.autoSave": "onFocusChange",
    "files.trimTrailingWhitespace": true,
    "files.insertFinalNewline": true,
    "files.trimFinalNewlines": true,
    "files.encoding": "utf8",
    "files.eol": "\n",
    "files.associations": {
        "*.ps1xml": "xml",
        "*.csproj": "xml",
        "*.props": "xml",
        "*.targets": "xml",
        "*.ruleset": "xml",
        "*.pom": "xml"
    },
    "files.exclude": {
        "**/.git": true,
        "**/.svn": true,
        "**/.hg": true,
        "**/CVS": true,
        "**/.DS_Store": true,
        "**/Thumbs.db": true
    },
    "files.watcherExclude": {
        "**/.git/objects/**": true,
        "**/.git/subtree-cache/**": true,
        "**/node_modules/**": true,
        "**/bin/**": true,
        "**/obj/**": true,
        "**/target/**": true,
        "**/__pycache__/**": true,
        "**/.pytest_cache/**": true,
        "**/venv/**": true,
        "**/.venv/**": true
    },

    // ============================================================
    // SEARCH - Exclude build artifacts
    // ============================================================
    "search.exclude": {
        "**/node_modules": true,
        "**/bower_components": true,
        "**/bin": true,
        "**/obj": true,
        "**/target": true,
        "**/dist": true,
        "**/build": true,
        "**/__pycache__": true,
        "**/*.pyc": true,
        "**/venv": true,
        "**/.venv": true
    },

    // ============================================================
    // WORKBENCH - UI Settings
    // ============================================================
    "workbench.startupEditor": "none",
    "workbench.tree.indent": 16,
    "workbench.tree.renderIndentGuides": "always",
    "workbench.list.smoothScrolling": true,
    "workbench.editor.enablePreview": true,
    "workbench.editor.highlightModifiedTabs": true,
    "workbench.colorCustomizations": {},
    "workbench.iconTheme": "material-icon-theme",

    // ============================================================
    // EXPLORER
    // ============================================================
    "explorer.confirmDelete": true,
    "explorer.confirmDragAndDrop": false,
    "explorer.compactFolders": false,
    "explorer.sortOrder": "default",

    // ============================================================
    // BREADCRUMBS
    // ============================================================
    "breadcrumbs.enabled": true,
    "breadcrumbs.filePath": "on",
    "breadcrumbs.symbolPath": "on",

    // ============================================================
    // TERMINAL
    // ============================================================
    "terminal.integrated.fontSize": 13,
    "terminal.integrated.fontFamily": "'JetBrains Mono', 'Fira Code', Menlo, monospace",
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.smoothScrolling": true,
    "terminal.integrated.scrollback": 10000,
    "terminal.integrated.enableMultiLinePasteWarning": "auto",

    // ============================================================
    // GIT
    // ============================================================
    "git.autofetch": true,
    "git.confirmSync": false,
    "git.enableSmartCommit": true,
    "git.openRepositoryInParentFolders": "always",
    "git.suggestSmartCommit": true,
    "git.decorations.enabled": true,

    // ============================================================
    // DEBUG
    // ============================================================
    "debug.saveBeforeStart": "allEditorsInActiveGroup",
    "debug.openDebug": "openOnDebugBreak",
    "debug.internalConsoleOptions": "neverOpen",
    "debug.showBreakpointsInOverviewRuler": true,

    // ============================================================
    // ZEN MODE
    // ============================================================
    "zenMode.fullScreen": false,
    "zenMode.hideLineNumbers": false,
    "zenMode.centerLayout": true,
    "zenMode.silentNotifications": true,

    // ============================================================
    // DIFF EDITOR
    // ============================================================
    "diffEditor.ignoreTrimWhitespace": false,
    "diffEditor.renderSideBySide": true,
    "diffEditor.wordWrap": "off",

    // ============================================================
    // C# SETTINGS
    // ============================================================
    "csharp.format.enable": true,
    "csharp.semanticHighlighting.enabled": true,
    "dotnetAcquisitionExtension.enableTelemetry": false,
    "omnisharp.enableRoslynAnalyzers": true,
    "omnisharp.enableEditorConfigSupport": true,
    "omnisharp.organizeImportsOnFormat": true,
    "[csharp]": {
        "editor.defaultFormatter": "ms-dotnettools.csharp",
        "editor.formatOnSave": true,
        "editor.tabSize": 4,
        "editor.insertSpaces": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "explicit"
        }
    },

    // ============================================================
    // JAVA SETTINGS
    // ============================================================
    "java.configuration.updateBuildConfiguration": "automatic",
    "java.compile.nullAnalysis.mode": "automatic",
    "java.saveActions.organizeImports": true,
    "java.format.enabled": true,
    "java.format.settings.profile": "GoogleStyle",
    "java.codeGeneration.generateComments": true,
    "java.codeGeneration.hashCodeEquals.useJava7Objects": true,
    "java.codeGeneration.toString.template": "${object.className} [${member.name()}=${member.value}, ${otherMembers}]",
    "java.completion.favoriteStaticMembers": [
        "org.junit.Assert.*",
        "org.junit.jupiter.api.Assertions.*",
        "org.mockito.Mockito.*",
        "java.util.Objects.*"
    ],
    "java.sources.organizeImports.starThreshold": 5,
    "java.sources.organizeImports.staticStarThreshold": 3,
    "java.maxConcurrentBuilds": 1,
    "java.jdt.ls.vmargs": "-XX:+UseParallelGC -XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -Dsun.zip.disableMemoryMapping=true -Xmx4G -Xms512m",
    "[java]": {
        "editor.defaultFormatter": "redhat.java",
        "editor.formatOnSave": true,
        "editor.tabSize": 4,
        "editor.insertSpaces": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "explicit"
        }
    },

    // ============================================================
    // POWERSHELL SETTINGS
    // ============================================================
    "powershell.codeFormatting.preset": "OTBS",
    "powershell.codeFormatting.autoCorrectAliases": true,
    "powershell.codeFormatting.useCorrectCasing": true,
    "powershell.codeFormatting.whitespaceBeforeOpenBrace": true,
    "powershell.codeFormatting.whitespaceBeforeOpenParen": true,
    "powershell.codeFormatting.whitespaceAroundOperator": true,
    "powershell.codeFormatting.whitespaceAfterSeparator": true,
    "powershell.codeFormatting.alignPropertyValuePairs": true,
    "powershell.codeFormatting.trimWhitespaceAroundPipe": true,
    "powershell.integratedConsole.showOnStartup": false,
    "powershell.scriptAnalysis.enable": true,
    "powershell.scriptAnalysis.settingsPath": "",
    "powershell.pester.useLegacyCodeLens": false,
    "[powershell]": {
        "editor.defaultFormatter": "ms-vscode.powershell",
        "editor.formatOnSave": true,
        "editor.tabSize": 4,
        "editor.insertSpaces": true,
        "editor.wordWrap": "off"
    },

    // ============================================================
    // PYTHON SETTINGS
    // ============================================================
    "python.analysis.typeCheckingMode": "basic",
    "python.analysis.autoImportCompletions": true,
    "python.analysis.completeFunctionParens": true,
    "python.analysis.inlayHints.functionReturnTypes": true,
    "python.analysis.inlayHints.variableTypes": false,
    "python.analysis.inlayHints.pytestParameters": true,
    "python.analysis.diagnosticMode": "workspace",
    "python.terminal.activateEnvironment": true,
    "python.terminal.executeInFileDir": false,
    "[python]": {
        "editor.defaultFormatter": "ms-python.black-formatter",
        "editor.formatOnSave": true,
        "editor.tabSize": 4,
        "editor.insertSpaces": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "explicit"
        }
    },
    "black-formatter.args": ["--line-length=88"],
    "ruff.lint.run": "onSave",
    "ruff.organizeImports": true,

    // ============================================================
    // JSON SETTINGS
    // ============================================================
    "[json]": {
        "editor.defaultFormatter": "vscode.json-language-features",
        "editor.formatOnSave": true,
        "editor.tabSize": 2
    },
    "[jsonc]": {
        "editor.defaultFormatter": "vscode.json-language-features",
        "editor.formatOnSave": true,
        "editor.tabSize": 2
    },

    // ============================================================
    // XML SETTINGS
    // ============================================================
    "[xml]": {
        "editor.defaultFormatter": "redhat.vscode-xml",
        "editor.formatOnSave": true,
        "editor.tabSize": 2
    },

    // ============================================================
    // MARKDOWN SETTINGS
    // ============================================================
    "[markdown]": {
        "editor.wordWrap": "on",
        "editor.formatOnSave": false,
        "editor.quickSuggestions": {
            "other": true,
            "comments": false,
            "strings": true
        }
    },

    // ============================================================
    // YAML SETTINGS
    // ============================================================
    "[yaml]": {
        "editor.formatOnSave": true,
        "editor.tabSize": 2,
        "editor.insertSpaces": true
    },

    // ============================================================
    // EXTENSION: GitLens
    // ============================================================
    "gitlens.currentLine.enabled": true,
    "gitlens.currentLine.pullRequests.enabled": true,
    "gitlens.hovers.currentLine.over": "line",
    "gitlens.codeLens.enabled": true,
    "gitlens.codeLens.recentChange.enabled": true,
    "gitlens.codeLens.authors.enabled": true,
    "gitlens.blame.format": "${author|10} ${date}",
    "gitlens.defaultDateFormat": "YYYY-MM-DD",
    "gitlens.defaultDateShortFormat": "MMM D",

    // ============================================================
    // EXTENSION: Error Lens
    // ============================================================
    "errorLens.enabledDiagnosticLevels": ["error", "warning"],
    "errorLens.delay": 500,
    "errorLens.fontStyleItalic": true,
    "errorLens.gutterIconsEnabled": true,

    // ============================================================
    // EXTENSION: Todo Tree
    // ============================================================
    "todo-tree.general.tags": ["TODO", "FIXME", "BUG", "HACK", "XXX", "NOTE", "REVIEW"],
    "todo-tree.highlights.defaultHighlight": {
        "gutterIcon": true
    },
    "todo-tree.highlights.customHighlight": {
        "TODO": { "foreground": "#FFEB3B", "icon": "checklist" },
        "FIXME": { "foreground": "#FF5722", "icon": "flame" },
        "BUG": { "foreground": "#F44336", "icon": "bug" },
        "NOTE": { "foreground": "#2196F3", "icon": "note" }
    },

    // ============================================================
    // EXTENSION: Bookmarks
    // ============================================================
    "bookmarks.saveBookmarksInProject": true,
    "bookmarks.navigateThroughAllFiles": true,

    // ============================================================
    // EXTENSION: Project Manager
    // ============================================================
    "projectManager.git.baseFolders": ["~/Documents/git"],
    "projectManager.sortList": "Recent",

    // ============================================================
    // EXTENSION: Better Comments
    // ============================================================
    "better-comments.tags": [
        { "tag": "!", "color": "#FF2D00", "strikethrough": false, "underline": false, "backgroundColor": "transparent" },
        { "tag": "?", "color": "#3498DB", "strikethrough": false, "underline": false, "backgroundColor": "transparent" },
        { "tag": "//", "color": "#474747", "strikethrough": true, "underline": false, "backgroundColor": "transparent" },
        { "tag": "todo", "color": "#FF8C00", "strikethrough": false, "underline": false, "backgroundColor": "transparent" },
        { "tag": "*", "color": "#98C379", "strikethrough": false, "underline": false, "backgroundColor": "transparent" }
    ],

    // ============================================================
    // TELEMETRY - Privacy
    // ============================================================
    "telemetry.telemetryLevel": "off",

    // ============================================================
    // MISC
    // ============================================================
    "extensions.autoUpdate": true,
    "extensions.ignoreRecommendations": false,
    "update.mode": "default",
    "window.zoomLevel": 0,
    "window.commandCenter": true,
    "window.newWindowDimensions": "inherit"
}
```

## Platform-Specific Settings

### macOS Terminal Profile
Add to terminal settings:
```json
"terminal.integrated.defaultProfile.osx": "zsh"
```

### Windows Terminal Profile
Add to terminal settings:
```json
"terminal.integrated.defaultProfile.windows": "PowerShell"
```

### Linux Terminal Profile
Add to terminal settings:
```json
"terminal.integrated.defaultProfile.linux": "bash"
```
