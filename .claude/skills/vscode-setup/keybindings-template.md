# VS Code Keybindings Template

Use this template when creating keybindings.json.

## Complete Keybindings Template

```json
[
    // ============================================================
    // NAVIGATION
    // ============================================================
    {
        "key": "cmd+[",
        "command": "workbench.action.navigateBack",
        "when": "canNavigateBack"
    },
    {
        "key": "cmd+]",
        "command": "workbench.action.navigateForward",
        "when": "canNavigateForward"
    },
    {
        "key": "ctrl+tab",
        "command": "workbench.action.nextEditor"
    },
    {
        "key": "ctrl+shift+tab",
        "command": "workbench.action.previousEditor"
    },
    {
        "key": "cmd+1",
        "command": "workbench.action.openEditorAtIndex1"
    },
    {
        "key": "cmd+2",
        "command": "workbench.action.openEditorAtIndex2"
    },
    {
        "key": "cmd+3",
        "command": "workbench.action.openEditorAtIndex3"
    },
    {
        "key": "cmd+4",
        "command": "workbench.action.openEditorAtIndex4"
    },
    {
        "key": "cmd+5",
        "command": "workbench.action.openEditorAtIndex5"
    },

    // ============================================================
    // EDITOR - Line Operations
    // ============================================================
    {
        "key": "cmd+shift+d",
        "command": "editor.action.copyLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+shift+k",
        "command": "editor.action.deleteLines",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "alt+up",
        "command": "editor.action.moveLinesUpAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "alt+down",
        "command": "editor.action.moveLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+j",
        "command": "editor.action.joinLines",
        "when": "editorTextFocus && !editorReadonly"
    },

    // ============================================================
    // EDITOR - Selection
    // ============================================================
    {
        "key": "cmd+l",
        "command": "expandLineSelection",
        "when": "textInputFocus"
    },
    {
        "key": "cmd+d",
        "command": "editor.action.addSelectionToNextFindMatch",
        "when": "editorFocus"
    },
    {
        "key": "cmd+shift+l",
        "command": "editor.action.selectHighlights",
        "when": "editorFocus"
    },
    {
        "key": "ctrl+shift+up",
        "command": "editor.action.insertCursorAbove",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+shift+down",
        "command": "editor.action.insertCursorBelow",
        "when": "editorTextFocus"
    },

    // ============================================================
    // CODE ACTIONS & REFACTORING
    // ============================================================
    {
        "key": "cmd+.",
        "command": "editor.action.quickFix",
        "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "f2",
        "command": "editor.action.rename",
        "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+shift+r",
        "command": "editor.action.refactor",
        "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "alt+shift+o",
        "command": "editor.action.organizeImports",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "alt+shift+f",
        "command": "editor.action.formatDocument",
        "when": "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+k cmd+f",
        "command": "editor.action.formatSelection",
        "when": "editorHasDocumentSelectionFormattingProvider && editorTextFocus && !editorReadonly"
    },

    // ============================================================
    // GO TO / PEEK
    // ============================================================
    {
        "key": "f12",
        "command": "editor.action.revealDefinition",
        "when": "editorHasDefinitionProvider && editorTextFocus"
    },
    {
        "key": "alt+f12",
        "command": "editor.action.peekDefinition",
        "when": "editorHasDefinitionProvider && editorTextFocus"
    },
    {
        "key": "cmd+f12",
        "command": "editor.action.goToImplementation",
        "when": "editorHasImplementationProvider && editorTextFocus"
    },
    {
        "key": "shift+f12",
        "command": "editor.action.goToReferences",
        "when": "editorHasReferenceProvider && editorTextFocus"
    },
    {
        "key": "cmd+k f12",
        "command": "editor.action.revealDefinitionAside",
        "when": "editorHasDefinitionProvider && editorTextFocus"
    },
    {
        "key": "cmd+shift+o",
        "command": "workbench.action.gotoSymbol",
        "when": "editorTextFocus"
    },
    {
        "key": "cmd+t",
        "command": "workbench.action.showAllSymbols"
    },

    // ============================================================
    // TERMINAL
    // ============================================================
    {
        "key": "ctrl+`",
        "command": "workbench.action.terminal.toggleTerminal"
    },
    {
        "key": "ctrl+shift+`",
        "command": "workbench.action.terminal.new"
    },
    {
        "key": "cmd+\\",
        "command": "workbench.action.terminal.split",
        "when": "terminalFocus && terminalProcessSupported"
    },
    {
        "key": "alt+cmd+left",
        "command": "workbench.action.terminal.focusPrevious",
        "when": "terminalFocus"
    },
    {
        "key": "alt+cmd+right",
        "command": "workbench.action.terminal.focusNext",
        "when": "terminalFocus"
    },
    {
        "key": "cmd+k",
        "command": "workbench.action.terminal.clear",
        "when": "terminalFocus && terminalProcessSupported"
    },

    // ============================================================
    // SIDEBAR & PANELS
    // ============================================================
    {
        "key": "cmd+b",
        "command": "workbench.action.toggleSidebarVisibility"
    },
    {
        "key": "cmd+shift+e",
        "command": "workbench.view.explorer",
        "when": "viewContainer.workbench.view.explorer.enabled"
    },
    {
        "key": "cmd+shift+f",
        "command": "workbench.view.search",
        "when": "workbench.view.search.active"
    },
    {
        "key": "ctrl+shift+g",
        "command": "workbench.view.scm",
        "when": "workbench.scm.active"
    },
    {
        "key": "cmd+shift+x",
        "command": "workbench.view.extensions"
    },
    {
        "key": "cmd+shift+d",
        "command": "workbench.view.debug",
        "when": "viewContainer.workbench.view.debug.enabled"
    },
    {
        "key": "cmd+j",
        "command": "workbench.action.togglePanel"
    },

    // ============================================================
    // DEBUGGING
    // ============================================================
    {
        "key": "f5",
        "command": "workbench.action.debug.start",
        "when": "debuggersAvailable && debugState == 'inactive'"
    },
    {
        "key": "f5",
        "command": "workbench.action.debug.continue",
        "when": "inDebugMode && debugState == 'stopped'"
    },
    {
        "key": "shift+f5",
        "command": "workbench.action.debug.stop",
        "when": "inDebugMode"
    },
    {
        "key": "ctrl+f5",
        "command": "workbench.action.debug.run",
        "when": "debuggersAvailable && debugState == 'inactive'"
    },
    {
        "key": "cmd+shift+f5",
        "command": "workbench.action.debug.restart",
        "when": "inDebugMode"
    },
    {
        "key": "f9",
        "command": "editor.debug.action.toggleBreakpoint",
        "when": "editorTextFocus"
    },
    {
        "key": "f10",
        "command": "workbench.action.debug.stepOver",
        "when": "inDebugMode && debugState == 'stopped'"
    },
    {
        "key": "f11",
        "command": "workbench.action.debug.stepInto",
        "when": "inDebugMode && debugState == 'stopped'"
    },
    {
        "key": "shift+f11",
        "command": "workbench.action.debug.stepOut",
        "when": "inDebugMode && debugState == 'stopped'"
    },

    // ============================================================
    // SPLIT EDITOR
    // ============================================================
    {
        "key": "cmd+\\",
        "command": "workbench.action.splitEditor"
    },
    {
        "key": "cmd+alt+0",
        "command": "workbench.action.toggleEditorGroupLayout"
    },
    {
        "key": "cmd+k cmd+left",
        "command": "workbench.action.focusLeftGroup"
    },
    {
        "key": "cmd+k cmd+right",
        "command": "workbench.action.focusRightGroup"
    },
    {
        "key": "cmd+k cmd+up",
        "command": "workbench.action.focusAboveGroup"
    },
    {
        "key": "cmd+k cmd+down",
        "command": "workbench.action.focusBelowGroup"
    },

    // ============================================================
    // COMMENTS
    // ============================================================
    {
        "key": "cmd+/",
        "command": "editor.action.commentLine",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "alt+shift+a",
        "command": "editor.action.blockComment",
        "when": "editorTextFocus && !editorReadonly"
    },

    // ============================================================
    // BOOKMARKS (Extension)
    // ============================================================
    {
        "key": "cmd+alt+k",
        "command": "bookmarks.toggle",
        "when": "editorTextFocus"
    },
    {
        "key": "cmd+alt+j",
        "command": "bookmarks.jumpToPrevious",
        "when": "editorTextFocus"
    },
    {
        "key": "cmd+alt+l",
        "command": "bookmarks.jumpToNext",
        "when": "editorTextFocus"
    },
    {
        "key": "cmd+alt+b",
        "command": "bookmarks.list"
    },

    // ============================================================
    // FOLD / UNFOLD
    // ============================================================
    {
        "key": "cmd+alt+[",
        "command": "editor.fold",
        "when": "editorTextFocus && foldingEnabled"
    },
    {
        "key": "cmd+alt+]",
        "command": "editor.unfold",
        "when": "editorTextFocus && foldingEnabled"
    },
    {
        "key": "cmd+k cmd+0",
        "command": "editor.foldAll",
        "when": "editorTextFocus && foldingEnabled"
    },
    {
        "key": "cmd+k cmd+j",
        "command": "editor.unfoldAll",
        "when": "editorTextFocus && foldingEnabled"
    },

    // ============================================================
    // ZEN MODE & FOCUS
    // ============================================================
    {
        "key": "cmd+k z",
        "command": "workbench.action.toggleZenMode"
    },
    {
        "key": "cmd+k cmd+z",
        "command": "workbench.action.toggleCenteredLayout"
    },

    // ============================================================
    // QUICK OPEN & COMMAND PALETTE
    // ============================================================
    {
        "key": "cmd+p",
        "command": "workbench.action.quickOpen"
    },
    {
        "key": "cmd+shift+p",
        "command": "workbench.action.showCommands"
    },

    // ============================================================
    // PROJECT MANAGER (Extension)
    // ============================================================
    {
        "key": "alt+cmd+p",
        "command": "projectManager.listProjects"
    },

    // ============================================================
    // GIT
    // ============================================================
    {
        "key": "cmd+shift+g g",
        "command": "workbench.view.scm"
    },
    {
        "key": "cmd+k cmd+s",
        "command": "git.stageSelectedRanges",
        "when": "editorTextFocus && !editorReadonly"
    },

    // ============================================================
    // MISCELLANEOUS
    // ============================================================
    {
        "key": "cmd+k cmd+t",
        "command": "workbench.action.selectTheme"
    },
    {
        "key": "cmd+,",
        "command": "workbench.action.openSettings"
    },
    {
        "key": "cmd+w",
        "command": "workbench.action.closeActiveEditor"
    },
    {
        "key": "cmd+shift+w",
        "command": "workbench.action.closeAllEditors"
    },
    {
        "key": "cmd+k w",
        "command": "workbench.action.closeOtherEditors"
    },
    {
        "key": "cmd+shift+t",
        "command": "workbench.action.reopenClosedEditor"
    },

    // ============================================================
    // SAVE
    // ============================================================
    {
        "key": "cmd+s",
        "command": "workbench.action.files.save"
    },
    {
        "key": "cmd+alt+s",
        "command": "workbench.action.files.saveAll"
    }
]
```

## Windows/Linux Key Mappings

For Windows/Linux, replace the following keys:
- `cmd` → `ctrl`
- `alt` → `alt` (same)
- `ctrl` → `ctrl` (same)

Example conversions:
- `cmd+s` → `ctrl+s`
- `cmd+shift+p` → `ctrl+shift+p`
- `cmd+alt+k` → `ctrl+alt+k`
