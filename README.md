# sandbox

Generic devcontainer for development with Claude Code and remote access via Tailscale SSH.

## What's included

- **Claude Code** with marketplace plugins and bypass permissions
- **Python 3.13** (uv package manager)
- **Node 22** (fnm)
- **Tailscale SSH** for remote access
- **Tools**: ripgrep, fd, fzf, ast-grep, git-delta, tmux, zsh (Oh My Zsh)

## Usage

Copy `.devcontainer/` into your project, then open in VS Code with Dev Containers extension.

### Tailscale SSH

Set `TAILSCALE_AUTHKEY` on your host machine:

```bash
export TAILSCALE_AUTHKEY="tskey-auth-xxxxx"
```

Generate the key in [Tailscale Admin Console](https://login.tailscale.com/admin/settings/keys) (Reusable + Ephemeral).

After container start, connect from another Tailscale device:

```bash
ssh vscode@<container-name-from-tailscale-status>
```

## Environment variables

- `CLAUDE_CODE_OAUTH_TOKEN` — Claude Code auth
- `ANTHROPIC_API_KEY` — Anthropic API access
- `TAILSCALE_AUTHKEY` — Tailscale auto-login
