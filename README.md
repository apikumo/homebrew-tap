# apikumo/tap — Homebrew tap

Homebrew formulae for [apikumo](https://apikumo.com) tools.

## Install

```bash
brew install apikumo/tap/apikumo
```

The `brew install` command will auto-add the tap on first use. Alternatively,
add it explicitly:

```bash
brew tap apikumo/tap
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

Release tarballs are published to https://github.com/apikumo/releases as
`apikumo-<version>.tgz`. This Formula points at that asset and installs via
`npm install` (Node 18+ required — Homebrew pulls it in automatically as a
dependency).
