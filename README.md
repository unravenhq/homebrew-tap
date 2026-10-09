# Unraven Homebrew Tap

## Formulae

| Formula | Description |
|---|---|
| `vault-cli` | Command-line interface for Unraven Vault (installs the `vault` command) |

## Install

```bash
brew install unravenhq/tap/vault-cli
```

Or tap once and use the short name:

```bash
brew tap unravenhq/tap
brew install vault-cli
```

Or in a `Brewfile`:

```ruby
tap "unravenhq/tap"
brew "vault-cli"
```

## Updating a formula

```bash
brew bump-formula-pr --url https://registry.npmjs.org/@unraven/vault-cli/-/vault-cli-<version>.tgz unravenhq/tap/vault-cli
```
