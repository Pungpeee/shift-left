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

## API

### Prerequisites

- [Node.js](https://nodejs.org/) - JavaScript runtime

### Installation

Install dependencies:

```bash
npm install
```

### Running the Server

Start the server in development mode (with auto-reload):

```bash
npm run dev
```

Start the server in production mode:

```bash
npm start
```

### API Endpoints

#### GET /
Welcome endpoint

```bash
curl http://localhost:3000/
```

Response:
```json
{
  "message": "Welcome to Shift-Left API",
  "version": "1.0.0"
}
```

#### GET /health
Health check endpoint

```bash
curl http://localhost:3000/health
```

Response:
```json
{
  "status": "ok"
}
```

## Deployment

### Vercel

This project is configured for deployment on [Vercel](https://vercel.com/).

#### Deploy via Vercel CLI

1. Install Vercel CLI:
```bash
npm install -g vercel
```

2. Deploy:
```bash
vercel
```

#### Deploy via Vercel Dashboard

1. Push your code to a Git repository (GitHub, GitLab, or Bitbucket)
2. Import the project in [Vercel Dashboard](https://vercel.com/new)
3. Vercel will automatically detect the configuration and deploy

#### Environment Variables

Set the following environment variable in Vercel if needed:

- `PORT` - Server port (default: 3000)
