.PHONY: setup-basic
setup-basic:
	git clone --bare git@github.com:IniZio/dotfiles.git ~/.dotfiles || true
	make brew-install

.PHONY: setup-ubuntu
setup-ubuntu:
	make setup-basic

.PHOY: setup-mac
setup-mac:
	make setup-basic

.PHONY: setup-brew
setup-brew: SHELL := $(shell which bash)
setup-brew:
	which brew || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

.PHONY: brew-install
# - diff-so-fancy: git diff
# - howdoi: quick stack-overflow-like CLI
brew-install: setup-brew
	brew install \
		diff-so-fancy \
		howdoi \
		neovim

# Open dotfiles in vscode
.PHONY: dots-code
dots-code: SHELL := $(shell which fish)
dots-code:
	dots code .
