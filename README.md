# AIConfig

Personal configuration files for AI tools.

## Contents

### .claude/

Claude Code configuration directory containing:

- **settings.json** - Model preferences and enabled plugins
- **skills/** - Custom skills for extending Claude Code capabilities
- **plugins/** - Plugin configurations
- **projects/** - Project-specific settings

## Usage

To restore configuration on a new machine:

```bash
cp -r ./.claude ~/
```

## What's Tracked

The `.gitignore` excludes sensitive/personal data:

| Included | Excluded |
|----------|----------|
| settings.json | history.jsonl |
| skills/ | session-env/ |
| plugins/ | todos/ |
| downloads/ | projects/ |
| | debug/, telemetry/ |
