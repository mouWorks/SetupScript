#!/usr/bin/make -f
.PHONY : all base powerline sublime travis kraken docker composer wget slack postman fork

all: powerline travis kraken docker composer sublime wget slack postman fork
	@echo ">>Now building Everything"

## Homebrew requires root account
base:
	@echo ">>> Install Homebrew......"
	./base.sh
## Need this to get files
wget:
	@echo ">>> getting wget"
	brew install wget
## TBD: this one is complicated
powerline:
	@echo ">>> Install Powerline"
	./powerline.sh

sublime:
	@echo ">>> Install Sublime Text 3 && Setup shortcut [subl]"
	brew cask install sublime-text && 
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

## Travis CI the CI/CD tool
travis:
	@echo ">>> Install travis Via Homebrew"
	brew install travis

## GitKraken for Git Version Control
kraken:
	@echo ">>> Install gitkraken Via Homebrew"
	brew cask install gitkraken

## Docker
docker:
	@echo ">>> Install Docker Env"
	brew update && brew cask install docker

## Composer
composer:
	@echo ">>> Install composer"
	./getComposer.sh &&  mv composer.phar /usr/local/bin/composer

## Slack
slack:
	@echo ">>> Install Slack"
	brew cask install slack

## Postman the Api tool
postman:
	@echo ">>> Install Postman the Api tool"
	brew cask install postman

fork:
	@echo ">>> Install Fork the git GUI client"
	brew cask install fork

## Clean up Homebrew cask
clean-up:
	@echo ">>> Clean Up Homebrew Cask"
	brew cask cleanup

