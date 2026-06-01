# homebrew-snapshift

Homebrew tap for [SnapShift](https://github.com/miroslav-gruevski/SnapShift) — a tray-based batch image converter.

## Install

```bash
brew install --cask miroslav-gruevski/snapshift/snapshift
```

Homebrew downloads the latest `.dmg` from GitHub Releases and installs SnapShift into `/Applications`.

SnapShift is a free unsigned build. On recent macOS versions, the first launch can still show:

> Apple could not verify "SnapShift.app" is free of malware.

If that appears:

1. Click **Done**.
2. Open **System Settings → Privacy & Security**.
3. Scroll to the **Security** section.
4. Click **Open Anyway** for SnapShift.
5. Confirm with Touch ID or your password.
6. Open SnapShift again.

Future launches should open normally.

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
