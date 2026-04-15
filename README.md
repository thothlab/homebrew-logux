# homebrew-logux

Homebrew tap for [logux](https://github.com/thothlab/logux) — Android Logs & Traffic CLI.

## Install

```bash
brew install thothlab/logux/logux
```

Or add the tap first:

```bash
brew tap thothlab/logux
brew install logux
```

## Update

```bash
brew update && brew upgrade logux
```

## Uninstall

```bash
brew uninstall logux
brew untap thothlab/logux
```

## What you get

- Prebuilt universal macOS binary (Apple Silicon + Intel) from [release v2.1.0](https://github.com/thothlab/logux/releases/tag/v2.1.0)
- No Rust / cargo required
- Gatekeeper quarantine auto-stripped by Homebrew

## Requires

- `adb` (Android Debug Bridge) in PATH — `brew install android-platform-tools`

## Source

See the main repo: https://github.com/thothlab/logux — MIT licensed.
