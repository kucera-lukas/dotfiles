#!/bin/sh

set -e # -e: exit on error

if [ ! "$(command -v chezmoi)" ]; then
  echo "Installing chezmoi as it's not available"

  bin_dir="$HOME/.local/bin"
  chezmoi="$bin_dir/chezmoi"

  if [ "$(command -v curl)" ]; then
    echo "Using curl to download chezmoi"

    sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$bin_dir"
  elif [ "$(command -v wget)" ]; then
    echo "Using wget to download chezmoi"

    sh -c "$(wget -qO- https://git.io/chezmoi)" -- -b "$bin_dir"
  else
    echo "To install chezmoi, you must have curl or wget installed." >&2

    exit 1
  fi

  echo "Chezmoi successfully installed"
else
  echo "Using installed chezmoi"

  chezmoi=chezmoi
fi

# POSIX way to get script's dir: https://stackoverflow.com/a/29834779/12156188
script_dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"

echo "Script directory is ${script_dir}"

echo "Replacing current process with chezmoi init"

exec "$chezmoi" init --apply "--source=$script_dir"
