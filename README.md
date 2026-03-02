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

## CI/CD

### GitHub Actions

This project uses GitHub Actions for continuous integration and deployment. The workflow is triggered on push to the `main` branch or manually via workflow dispatch.

#### Workflow Stages

1. **Build Stage**
   - Checks out the code
   - Sets up Node.js environment
   - Installs dependencies
   - Runs build (if available)
   - Uploads build artifacts

2. **Deploy Stage**
   - Downloads build artifacts
   - Deploys to Vercel production environment

#### Required GitHub Secrets

Configure the following secrets in your GitHub repository settings (`Settings > Secrets and variables > Actions`):

| Secret | Description | How to get it |
|--------|-------------|---------------|
| `VERCEL_TOKEN` | Vercel authentication token | Go to [Vercel Tokens](https://vercel.com/account/tokens) and create a new token |
| `VERCEL_ORG_ID` | Your Vercel organization ID | Found in `.vercel/project.json` or Vercel project settings |
| `VERCEL_PROJECT_ID` | Your Vercel project ID | Found in `.vercel/project.json` or Vercel project settings |

#### How to get Vercel Organization ID and Project ID

**Method 1: Using Vercel CLI (Recommended)**

1. Install Vercel CLI:
   ```bash
   npm install -g vercel
   ```

2. Login to Vercel:
   ```bash
   vercel login
   ```

3. Link your project:
   ```bash
   vercel link
   ```

4. View the project configuration:
   ```bash
   cat .vercel/project.json
   ```

   You'll see output like:
   ```json
   {
     "orgId": "team_xxxxxxxxxxxxxxxx",
     "projectId": "prj_xxxxxxxxxxxxxxxx"
   }
   ```

**Method 2: Using Vercel Dashboard**

1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Select your project
3. Go to **Settings** tab
4. Scroll down to **General** section
5. Copy the **Project ID** from the project information
6. For **Organization ID**, click on your profile/team name at the top left and select **Settings**, then copy the **ID** from the General section

#### Manual Deployment

You can trigger a manual deployment from the Actions tab in your GitHub repository:
1. Go to **Actions** tab
2. Select **Build and Deploy** workflow
3. Click **Run workflow**
4. Select the branch and click **Run workflow**

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
