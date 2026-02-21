#!/bin/bash

# Pre-commit setup script using Homebrew

set -e

echo "Setting up pre-commit..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Please install Homebrew first:"
    echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

# Install pre-commit using Homebrew
echo "Installing pre-commit via Homebrew..."
brew install pre-commit

# Install pre-commit hooks
echo "Installing pre-commit hooks..."
pre-commit install

# Verify installation
echo ""
echo "Verifying installation..."
pre-commit --version

echo ""
echo "Pre-commit setup completed successfully!"
echo ""
echo "To run pre-commit on all files manually:"
echo "  pre-commit run --all-files"
