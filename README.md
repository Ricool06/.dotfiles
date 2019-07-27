# .dotfiles

1. Clone this repo into your home directory.
1. Run `install-dotfile.sh`.

## Gotchas

* If `stow` conflicts, run `stow --adopt .`.
  Be careful, because this will overwrite the files in the `.dotfiles` repo with their conflicting files in `~`.