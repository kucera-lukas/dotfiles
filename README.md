# dotfiles

[![Continuous Integration](https://github.com/kucera-lukas/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/kucera-lukas/dotfiles/actions/workflows/ci.yml)

## Installation

### Requirements
* [chezmoi](https://www.chezmoi.io/)
* [Bitwarden CLI](https://bitwarden.com/help/cli/) (for personal use only)

### Instructions

#### Environment variables

**Note:** You are required to use the env variable `SECRETS_OFF=1`,
as not passing will make chezmoi fail when connecting to my Bitwarden account.

The following environment variables can be set to configure Chezmoi on runtime:

    ASK: Set to 1 if you want to enable chezmoi prompt
    SECRETS_OFF: Set to 1 to enable Bitwarden (uses my personal secrets set in .chezmoi.yaml)

#### Installation

```shell
SECRETS_OFF=1 curl -L https://raw.githubusercontent.com/kucera-lukas/dotfiles/main/install.sh | sh
```

#### Personal

```shell
curl -L https://raw.githubusercontent.com/kucera-lukas/dotfiles/main/install.sh | sh
```

## Contributing

```sh
pre-commit install
```

## Credits
* Secret and `ASK` management was largely inspired by Ben Mezger's
[dotfiles](https://github.com/benmezger/dotfiles)

## License
*  Developed under the [MIT](https://github.com/kucera-lukas/dotfiles/blob/main/LICENSE) license.
