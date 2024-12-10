#!/usr/bin/env bash

set -eu

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Setting up dotfiles for $(uname) environment ==="

# dotfiles直下で"`.`"から始まるファイル・ディレクトリを取得
# ('.' と '..' は無視、.gitや.DS_Storeなどは除外)
cd "$DOTFILES_DIR"
DOTITEMS=$(find . -maxdepth 1 -name ".*" -not -name "." -not -name ".." -not -name ".git" -not -name ".DS_Store")

for item in $DOTITEMS; do
  # item は './.zshrc' のような相対パスになるので先頭の './' を削除
  BASENAME="${item#./}"
  SRC_PATH="${DOTFILES_DIR}/${BASENAME}"
  TARGET_PATH="${HOME}/${BASENAME}"

  # 既に対象が存在し、かつシンボリックリンクではない場合はバックアップ
  if [ -e "${TARGET_PATH}" ] && [ ! -L "${TARGET_PATH}" ]; then
    echo "Backing up existing file/dir: ${TARGET_PATH} -> ${TARGET_PATH}.bak"
    mv "${TARGET_PATH}" "${TARGET_PATH}.bak"
  fi

  # シンボリックリンク作成
  echo "Creating symlink: ${TARGET_PATH} -> ${SRC_PATH}"
  ln -snf "${SRC_PATH}" "${TARGET_PATH}"
done

echo "All dotfiles have been symlinked!"
