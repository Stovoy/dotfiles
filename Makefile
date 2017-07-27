.PHONY: brew brew_packages dotfiles

default: dotfiles

brew:
	! which brew > /dev/null && /usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || true

brew_packages: brew
	brew update && brew install bash-git-prompt fswatch go htop tmux tree yarn && brew upgrade

dotfiles: brew_packages
	cp .bashrc ~/.bashrc
	! grep 'source ~/.bashrc' ~/.bash_profile > /dev/null && echo 'source ~/.bashrc' >> ~/.bash_profile || true
	cp .tmux.conf ~/.tmux.conf
