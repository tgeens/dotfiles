# dotfiles by tgeens

dotfiles scripts shamelessly borrowed from [holman/dotfiles](https://github.com/holman/dotfiles)

## components

There's a few special files in the hierarchy.

* *TODO* bin/: Anything in bin/ will get added to your $PATH and be made available everywhere.
* _<topic>_/install.sh: Any file named install.sh is executed when you run script/install. To avoid being loaded automatically, its extension is .sh, not .zsh.
* _<topic>/*.symlink: Any file ending in *.symlink gets symlinked into your $HOME. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `bin/dotfiles`.
* _<topic>_/*.pgp: Any file ending in *.pgp gets decryped into your $HOME and will ask for your passphrase in the process. This is so you can store sensitive files in your dotfiles-project.

## how is this different from holman/dotfiles ?

* stripped all zsh-stuff
* holman/dotfiles only supports topics with 1-level deep. problem: I don't want to symlink `~/.gradle/` into my dotfiles-clone. 
* added support for .gpg
