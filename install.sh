#!/bin/bash

set -e

INSTALL_DIR="/opt/wordlist"
TARGET="$INSTALL_DIR/wordlist.lua"
LINK="/usr/local/bin/q"

sudo mkdir -p "$INSTALL_DIR"

sudo cp -f wordlist.lua "$TARGET"

sudo chmod 755 "$TARGET"

# 创建符号链接
sudo ln -sf "$TARGET" "$LINK"

echo "  install: $TARGET"
echo "  try: q <patten1> <patten2> ..."


#!/bin/bash
set -e

# 检查 lua 或 lua5.x 是否存在
if ! command -v lua >/dev/null 2>&1 && \
   ! command -v lua5.4 >/dev/null 2>&1 && \
   ! command -v lua5.3 >/dev/null 2>&1 && \
   ! command -v lua5.2 >/dev/null 2>&1; then
    echo "needed dependence：install Lua right now"
    echo "  Arch:   sudo pacman -S lua"
    echo "  Debian: sudo apt install lua5.4"
    echo "  Fedora: sudo dnf install lua"
    exit 1
fi

