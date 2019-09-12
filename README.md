Various bash scripts and utils

# Dotfiles

Homedir configuration files (aka dotfiles) are stored in a [separate repo](https://github.com/falouu/dotfiles):

To install dotfiles on your host, follow these steps
1. `git clone --bare git@github.com:falouu/dotfiles.git $HOME/.config/dotfiles`
2. `alias config='/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME'`
3. `config config --local status.showUntrackedFiles no`
4. `echo "alias config='/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME'" >> $HOME/.bashrc`
5. `config checkout <one of branches>` 

The setup is based on the article: https://www.atlassian.com/git/tutorials/dotfiles 





