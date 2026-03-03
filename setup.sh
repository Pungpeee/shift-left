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

# Install Node.js if missing
if ! command -v node &> /dev/null; then
    echo "Node.js not found; installing via Homebrew..."
    brew install node
else
    echo "Node.js already installed ($(node --version))"
fi

# Install Git if missing
if ! command -v git &> /dev/null; then
    echo "Git not found; installing via Homebrew..."
    brew install git
else
    echo "Git already installed ($(git --version))"
fi

# Install pre-commit using Homebrew if not already present
if ! command -v pre-commit &> /dev/null; then
    echo "pre-commit not found; installing via Homebrew..."
    brew install pre-commit
else
    echo "pre-commit already installed ($(pre-commit --version))"
fi

# Install or update pre-commit hooks
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
