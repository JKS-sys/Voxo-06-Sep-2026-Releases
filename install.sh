#!/bin/sh
# Voxo installer for macOS and Linux.
#   curl -fsSL https://raw.githubusercontent.com/JKS-sys/Voxo-06-Sep-2026-Releases/main/install.sh | sh
# Downloads the latest release from GitHub (Cloudflare R2 if GitHub is unreachable),
# checks it, and installs it. Nothing else is changed on your computer.
set -eu
REPO="JKS-sys/Voxo-06-Sep-2026-Releases"
GH="https://github.com/$REPO/releases"
R2="https://ipconfig.co.network/updates/voxo"
say() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
die() { printf '\033[1;31mError:\033[0m %s\n' "$*" >&2; exit 1; }
need() { command -v "$1" >/dev/null 2>&1 || die "$1 is required"; }
need curl
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

feed="$(curl -fsSL "$GH/latest/download/latest.json" 2>/dev/null || curl -fsSL "$R2/latest.json")" || die "could not reach GitHub or ipconfig.co.network"
V="$(printf '%s' "$feed" | sed -n 's/.*"version"[[:space:]]*:[[:space:]]*"\([0-9][0-9.]*\)".*/\1/p' | head -1)"
[ -n "$V" ] || die "could not read the latest version"
say "Voxo $V"

get() {  # file → $TMP/file, GitHub first then R2
  curl -fL --progress-bar "$GH/download/v$V/$1" -o "$TMP/$1" || curl -fL --progress-bar "$R2/$1" -o "$TMP/$1" || die "download of $1 failed"
}

case "$(uname -s)" in
  Darwin)
    case "$(uname -m)" in arm64) A=aarch64 ;; *) A=x64 ;; esac
    F="Voxo_${V}_${A}.dmg"; get "$F"
    say "Installing to /Applications"
    MNT="$(hdiutil attach -nobrowse -readonly "$TMP/$F" | awk -F'\t' '/\/Volumes\//{print $NF; exit}')"
    [ -d "$MNT/Voxo.app" ] || die "the disk image has no Voxo.app"
    DEST=/Applications; [ -w "$DEST" ] || DEST="$HOME/Applications"; mkdir -p "$DEST"
    rm -rf "$DEST/Voxo.app"; cp -R "$MNT/Voxo.app" "$DEST/"; hdiutil detach -quiet "$MNT" || true
    # Voxo is not signed with an Apple Developer ID; this lets macOS open it.
    xattr -cr "$DEST/Voxo.app" 2>/dev/null || true
    say "Done — open Voxo from $DEST (or: open -a Voxo)"
    ;;
  Linux)
    [ "$(uname -m)" = x86_64 ] || die "Voxo for Linux is built for x86_64 only right now"
    if command -v apt-get >/dev/null 2>&1 && command -v sudo >/dev/null 2>&1; then
      F="Voxo_${V}_amd64.deb"; get "$F"
      say "Installing $F (asks for your password)"
      sudo apt-get install -y "$TMP/$F"
      say "Done — run: voxo"
    else
      F="Voxo_${V}_amd64.AppImage"; get "$F"
      mkdir -p "$HOME/.local/bin"; install -m 755 "$TMP/$F" "$HOME/.local/bin/voxo"
      say "Done — run: ~/.local/bin/voxo"
    fi
    ;;
  *) die "on Windows use:  irm https://raw.githubusercontent.com/$REPO/main/install.ps1 | iex" ;;
esac
