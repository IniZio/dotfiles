# Dotfiles

### Pre-requisites

- Homebrew

### Setup:

1. `git clone --bare git@github.com:IniZio/dotfiles.git ~/.dotfiles`
1. `GIT_WORK_TREE=~ GIT_DIR=$HOME/.dotfiles git restore --staged ./`
1. `GIT_WORK_TREE=~ GIT_DIR=$HOME/.dotfiles git restore ./`
2. `make setup-ubuntu` / `make setup-mac`

### Environments

#### Linux

- [Cerebro](http://cerebroapp.com/): Unity's Alt-F2 alternative in i3wm
- [Postman](https://www.getpostman.com/)
- [Franz](http://meetfranz.com/) / [Rambox](http://rambox.pro/): Unify all your chat clients
- [Typora](https://typora.io): Best Markdown writer (has Latex)
- Guake terminal: Drop-down terminal
- NaSC: Not as powerful as WolframAlpha, but well sometimes you have to be offline..
- Meld: Compare files/directories, good for dirty comparisons
- Redshift GTK / flux indicator applet (in ubuntu repo already): Save your eyes
- Genymotion: faster emulator than Android AVD (only free for personal use with limited features though)
- howdoi: `pip install howdoi`
- [Etcher](https://etcher.io/): USB writer with a finally good UI
- Neovim

#### Mac

- Rectangle: Window manager.
- Postico / Table Plus: DB GUI client
