# Shift-Left

## Setup

### Prerequisites

- [Homebrew](https://brew.sh/) - Package manager for macOS

### Installation

Run the setup command to install pre-commit and configure hooks:

```bash
make setup
```

Or run the setup script directly:

```bash
./setup.sh
```

### Pre-commit Hooks

This project uses pre-commit to ensure code quality. The following hooks are configured:

- **trailing-whitespace** - Removes trailing whitespace
- **end-of-file-fixer** - Ensures files end with a newline
- **check-yaml** - Validates YAML syntax
- **check-json** - Validates JSON syntax
- **check-toml** - Validates TOML syntax
- **check-merge-conflict** - Detects merge conflict markers
- **detect-private-key** - Detects private keys
- **mixed-line-ending** - Normalizes line endings to LF
### Usage

Run pre-commit on staged files:

```bash
pre-commit run
```

Skip pre-commit hooks (not recommended):

```bash
git commit --no-verify
```
