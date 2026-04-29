# Homebrew Tap — brian-lai

Homebrew tap for tooling maintained by [@brian-lai](https://github.com/brian-lai).

## Available formulae

| Formula | Description | Source |
| --- | --- | --- |
| `clean-slate` | Interactive CLI for managing per-task workspaces with git worktrees. | [brian-lai/clean-slate](https://github.com/brian-lai/clean-slate) |

## Install

```sh
brew install brian-lai/tap/clean-slate
```

Homebrew auto-discovers this tap from the formula path. If you prefer an explicit tap:

```sh
brew tap brian-lai/tap
brew install clean-slate
```

## Updating

```sh
brew update
brew upgrade clean-slate
```

## Notes

- Formulae here build from source via `go build`. No prebuilt bottles yet.
- Supported platforms: macOS and Linux (via Linuxbrew).
- License: each formula tracks its upstream project's license.
