#!/usr/bin/make -f
.PHONY : all base powerline sublime travis

all: powerline travis kraken
	@echo ">>Now building Everything"

## Homebrew requires root account
base:
	@echo ">>> Install Homebrew......"
	./base.sh

powerline:
	@echo ">>> Install Powerline"
	./powerline.sh

sublime:
	@echo ">>> Install Sublime Text 3 && Setup shortcut [subl]"
	brew cask install sublime-text && 
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Travis CI the CI/CD tool
travis:
	@echo ">>> Install travis Via Homebrew"
	brew install travis

# GitKraken for Git Version Control
kraken:
	@echo ">>> Install gitkraken Via Homebrew"
	brew cask install gitkraken

#