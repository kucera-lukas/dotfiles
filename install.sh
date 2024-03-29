#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v chezmoi)" ]; then
  echo "installing chezmoi as it's not available"

  bin_dir="$HOME/.local/bin"
  chezmoi="$bin_dir/chezmoi"

  if [ "$(command -v curl)" ]; then
    echo "using curl to download chezmoi"

    sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$bin_dir"
  elif [ "$(command -v wget)" ]; then
    echo "using wget to download chezmoi"

    sh -c "$(wget -qO- https://git.io/chezmoi)" -- -b "$bin_dir"
  else
    echo "to install chezmoi, you must have curl or wget installed." >&2

    exit 1
  fi

  echo "chezmoi successfully installed"
else
  echo "using installed chezmoi"

  chezmoi=chezmoi
fi

# POSIX way to get script's dir: https://stackoverflow.com/a/29834779/12156188
script_dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"

echo "script directory is ${script_dir}"

"$chezmoi" init --apply "--source=$script_dir"

echo "kucera-lukas's dotfiles successfully installed"
