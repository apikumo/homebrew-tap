# meandp589/tap — Homebrew tap

Homebrew formulae for [apikumo](https://apikumo.com) tools.

## Install

```bash
brew install meandp589/tap/apikumo
```

The `brew install` command will auto-add the tap on first use. Alternatively,
add it explicitly:

```bash
brew tap meandp589/tap
brew install apikumo
```

## Formulae

| Name | Description |
|---|---|
| `apikumo` | CLI + MCP server for syncing OpenAPI specs to apikumo.com |

## Upgrading

```bash
brew update
brew upgrade apikumo
```

## How it works

Each release on https://github.com/meandp589/apikumo cuts a tarball that's
attached to the GitHub Release as `apikumo-<version>.tgz`. This Formula
points at that asset and installs via `npm install` (Node 18+ required —
Homebrew pulls it in automatically as a dependency).
