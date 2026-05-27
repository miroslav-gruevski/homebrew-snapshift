# homebrew-snapshift

Homebrew tap for [SnapShift](https://github.com/miroslav-gruevski/SnapShift) — a tray-based batch image converter.

## Install

```bash
brew install --cask miroslav-gruevski/snapshift/snapshift
```

Homebrew downloads the latest signed `.dmg` from GitHub Releases, drops it into `/Applications`, and removes the macOS quarantine attribute automatically — no "unidentified developer" or "damaged" prompt on first launch.

## Update

```bash
brew upgrade --cask snapshift
```

SnapShift also has a built-in auto-updater, so you can leave updates to the app once it's installed.

## Uninstall

```bash
brew uninstall --cask snapshift
brew untap miroslav-gruevski/snapshift
```

## How this tap is updated

This repository is bumped automatically by the [SnapShift release workflow](https://github.com/miroslav-gruevski/SnapShift/blob/main/.github/workflows/build.yml) on every tag push. Do not edit `Casks/snapshift.rb` by hand.
