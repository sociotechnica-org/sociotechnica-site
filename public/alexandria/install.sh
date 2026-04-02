#!/usr/bin/env bash
# Context Library — Remote Installer
#
# Downloads and installs the Context Library plugin from Alexandria.
#
# Usage:
#   curl -fsSL https://sociotechnica.org/alexandria/install.sh | bash
#   curl -fsSL https://sociotechnica.org/alexandria/install.sh | bash -s -- --yes
#
# Environment:
#   CONTEXT_LIBRARY_VERSION          Pin a specific version (default: latest)
#   CONTEXT_LIBRARY_ALEXANDRIA_URL   Override base URL (for testing)
#   CONTEXT_LIBRARY_BUN_BIN          Override bun binary path

set -euo pipefail

ALEXANDRIA_BASE_URL="${CONTEXT_LIBRARY_ALEXANDRIA_URL:-https://sociotechnica.org/alexandria}"
BUN_CMD="${CONTEXT_LIBRARY_BUN_BIN:-bun}"

# ─────────────────────────────────────────────
# Output helpers
# ─────────────────────────────────────────────

info() { echo "  → $1"; }
success() { echo "  ✓ $1"; }
error() { echo "  ✗ $1" >&2; }

# ─────────────────────────────────────────────
# Argument parsing
# ─────────────────────────────────────────────

ASSUME_YES=false

while [[ $# -gt 0 ]]; do
	case "$1" in
	--yes | -y)
		ASSUME_YES=true
		shift
		;;
	--help | -h)
		echo "Context Library Installer"
		echo ""
		echo "Usage: curl -fsSL https://sociotechnica.org/alexandria/install.sh | bash"
		echo "       curl -fsSL https://sociotechnica.org/alexandria/install.sh | bash -s -- --yes"
		echo ""
		echo "Environment:"
		echo "  CONTEXT_LIBRARY_VERSION   Pin a specific version (default: latest)"
		echo ""
		echo "Flags:"
		echo "  --yes, -y    Skip confirmation prompt"
		echo "  --help, -h   Show this help"
		exit 0
		;;
	*)
		error "Unknown option: $1"
		echo "Run with --help for usage" >&2
		exit 1
		;;
	esac
done

# ─────────────────────────────────────────────
# Version resolution
# ─────────────────────────────────────────────

resolve_version() {
	if [ -n "${CONTEXT_LIBRARY_VERSION:-}" ]; then
		printf '%s' "$CONTEXT_LIBRARY_VERSION"
		return
	fi

	if ! command -v curl &>/dev/null; then
		error "curl is required to resolve the latest version"
		exit 1
	fi

	curl -fsSL "$ALEXANDRIA_BASE_URL/latest-version.txt" | tr -d '[:space:]'
}

# ─────────────────────────────────────────────
# Install target detection
# ─────────────────────────────────────────────

detect_target() {
	if git rev-parse --is-inside-work-tree &>/dev/null 2>&1; then
		local repo_root
		repo_root="$(git rev-parse --show-toplevel)"
		printf '%s' "$repo_root/.claude/plugins/context-library"
	else
		printf '%s' "$HOME/.claude/plugins/context-library"
	fi
}

detect_context_label() {
	if git rev-parse --is-inside-work-tree &>/dev/null 2>&1; then
		printf 'project-local'
	else
		printf 'global'
	fi
}

# ─────────────────────────────────────────────
# Bun bootstrap
# ─────────────────────────────────────────────

ensure_bun() {
	if "$BUN_CMD" --version &>/dev/null 2>&1; then
		success "Bun found: $("$BUN_CMD" --version)"
		return
	fi

	info "Bun not found — installing..."

	if ! command -v curl &>/dev/null; then
		error "curl is required to install Bun"
		exit 1
	fi

	curl -fsSL https://bun.sh/install | bash

	# Activate Bun in this session
	export PATH="$HOME/.bun/bin:$PATH"
	BUN_CMD="$HOME/.bun/bin/bun"

	if ! "$BUN_CMD" --version &>/dev/null 2>&1; then
		error "Bun installation failed. Install Bun from https://bun.sh and retry."
		exit 1
	fi
	success "Bun installed: $("$BUN_CMD" --version)"
}

# ─────────────────────────────────────────────
# Download and install
# ─────────────────────────────────────────────

STAGING_DIR=""

cleanup() {
	if [ -n "$STAGING_DIR" ] && [ -d "$STAGING_DIR" ]; then
		rm -rf "$STAGING_DIR"
	fi
}

trap cleanup EXIT

download_and_install() {
	local version="$1"
	local target="$2"
	local archive_name="context-library-v${version}.tar.gz"
	local archive_url="$ALEXANDRIA_BASE_URL/$archive_name"

	STAGING_DIR="$(mktemp -d "${TMPDIR:-/tmp}/context-library-install.XXXXXX")"

	info "Downloading $archive_name..."
	curl -fsSL "$archive_url" -o "$STAGING_DIR/$archive_name"

	info "Extracting..."
	tar -xzf "$STAGING_DIR/$archive_name" -C "$STAGING_DIR"

	local extracted_dir="$STAGING_DIR/context-library-v${version}"
	if [ ! -d "$extracted_dir" ]; then
		error "Extraction failed — expected directory not found: $extracted_dir"
		exit 1
	fi

	if [ -e "$target" ] || [ -L "$target" ]; then
		rm -rf "$target"
	fi

	mkdir -p "$(dirname "$target")"
	mv "$extracted_dir" "$target"
	success "Installed to: $target"
}

# ─────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────

echo "Context Library — Installer"
echo ""

VERSION="$(resolve_version)"
if [ -z "$VERSION" ]; then
	error "Could not resolve version. Set CONTEXT_LIBRARY_VERSION or check your network."
	exit 1
fi

TARGET="$(detect_target)"
CONTEXT_LABEL="$(detect_context_label)"

echo "Install plan:"
echo "  Context:  $CONTEXT_LABEL"
echo "  Target:   $TARGET"
echo "  Version:  $VERSION"
echo ""

if [ "$ASSUME_YES" = false ]; then
	if [ -t 0 ]; then
		printf "Proceed? [y/N] "
		read -r REPLY
	elif (exec </dev/tty) 2>/dev/null; then
		printf "Proceed? [y/N] " >/dev/tty
		read -r REPLY </dev/tty
	else
		error "No terminal available for confirmation. Pipe with: bash -s -- --yes"
		exit 1
	fi

	if [[ ! "$REPLY" =~ ^[Yy]$ ]]; then
		echo "Aborted."
		exit 0
	fi
fi

echo ""
ensure_bun
download_and_install "$VERSION" "$TARGET"

info "Running setup..."
if [ "$CONTEXT_LABEL" = "project-local" ]; then
	CONTEXT_LIBRARY_BUN_BIN="$BUN_CMD" "$TARGET/setup" --no-symlinks
else
	CONTEXT_LIBRARY_BUN_BIN="$BUN_CMD" "$TARGET/setup"
fi

echo ""
echo "Installation complete! (v$VERSION)"
echo ""

if [ "$CONTEXT_LABEL" = "project-local" ]; then
	echo "Launch Claude Code with:"
	echo ""
	echo "  claude --plugin-dir .claude/plugins/context-library"
	echo ""
	echo "Tip: add .claude/plugins/context-library/ to your .gitignore to keep"
	echo "     the plugin out of version control:"
	echo ""
	echo "  echo '.claude/plugins/context-library/' >> .gitignore"
	echo ""
else
	echo "The plugin is globally installed — just run:"
	echo ""
	echo "  claude"
	echo ""
fi

echo "Then configure your library:"
echo "  Use the wizard to configure a context library for this project"
