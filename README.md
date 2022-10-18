# dotfiles

[![Continuous Integration](https://github.com/kucera-lukas/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/kucera-lukas/dotfiles/actions/workflows/ci.yml)

## Installation

### Requirements
* [chezmoi](https://www.chezmoi.io/)
* [Bitwarden CLI](https://bitwarden.com/help/cli/) (for personal use only)

### Instructions

**Note:** You are required to use the env variable `SECRETS_OFF=1`,
as not passing will make chezmoi fail when connecting to my Bitwarden account.

The following environment variables can be set to configure Chezmoi on runtime:

    ASK: Set to 1 if you want to enable chezmoi prompt
    SECRETS_OFF: Set to 1 to enable Bitwarden (uses my personal secrets set in .chezmoi.yaml)

For example, you can enable `ASK` by running:
```shell
ASK=1 chezmoi apply
```

Chezmoi allows easy installation of this configuration
by running the following command:

```shell
SECRETS_OFF=1 chezmoi init kucera-lukas
```

### Personal

```shell
chezmoi init kucera-lukas
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
