# Homebrew Tap

Homebrew formulae for 4rays projects.

## Installation

```bash
brew tap 4rays/tap
```

## Formulae

### ask-deepwiki

A CLI tool for querying [DeepWiki](https://deepwiki.com) documentation for any GitHub repository.

```bash
brew install 4rays/tap/ask-deepwiki
```

For more information, see the [ask-deepwiki repository](https://github.com/4rays/ask-deepwiki).

### xhammer

CLI + daemon for Xcode MCP bridge access. Installs pre-built macOS binaries — no Xcode required.

```bash
brew install 4rays/tap/xhammer
```

For more information, see the [xhammer repository](https://github.com/4rays/xhammer).

## Updating a Formula

When cutting a new release for a project:

1. Build release binaries and package as a tarball (see `RELEASING.md` in each repo).
2. Upload tarball to the GitHub release.
3. Update `Formula/<name>.rb`: set `url`, `sha256`, and `version`.
4. Commit and push.
