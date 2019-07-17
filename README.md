# Rob’s dotfiles

## Requirements

- TLDR (for ```hfuns``` and ```hdocker``` usage help documentation)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/bashconfig`, with `~/.bashconfig` as a symlink.) In order to do that do the following:

Clone this repository to a folder of your choice:

```bash
git clone https://github.com/heyimrob/bashconfig.git
```

Symlink the ```bashconfig``` folder to home:

```bash
ln -s bashconfig ~/.bashconfig
```

Add this to ```.bashrc```:

```bash
[ -n "$PS1" ] && source ~/.bash_profile;
```

Add this to ```.bash_profile```:

```bash
source ~/.bashconfig/.config_init
```

To activate the changes source your ```.bashrc```:

```bash
source ~/.bashrc
```
### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME=""
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL=""
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Linux file examples

### .bash_profile
```bash
source ~/.bashconfig/.config_init
```

### .bashrc
```bash
[ -n "$PS1" ] && source ~/.bash_profile;
```

## All Credits and Thanks to…

* Mathias Bynens and [his dotfiles repository](https://github.com/mathiasbynens/dotfiles)
