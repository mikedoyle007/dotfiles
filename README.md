## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/mikedoyle007/dotfiles.git ~
```

Run `stow config_you_want` to symlink the specified config. Avoid using `stow *` as
it will stow all the configs which will cause issues since some are for 'work' and
some are for 'home' but will often have the same file name.

```bash
stow zsh # Just my zsh config
```

