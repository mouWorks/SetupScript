#!/usr/bin/make -f
.PHONY : all

all: base powerline
	@echo ">>Now building Everything"

## Homebrew requires root account
base:
	@echo ">>> Mou Install Homebrew......"
	./base.sh

powerline:
	@echo ">>> Mou Install Powerline"
	./powerline.sh

sublime:
	@echo ">>> Mou Install Sublime Text 3 && Setup shortcut [subl]"
	brew cask install sublime-text && 
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

