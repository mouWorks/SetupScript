#!/usr/bin/make -f
.PHONY : all base sublime travis kraken docker composer wget slack postman fork alias gcloud terra iterm vagrant virtualbox sequelpro zeplin copyq npm

all: base travis kraken docker composer sublime wget slack postman fork alias gcloud terra iterm vagrant virtualbox sequelpro zeplin copyq npm
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
	brew cleanup

## Copy Local Alias Over
alias:
	@echo ">>> Copy Alias File"
	cp .bash_aliases ~/ && source ~/.bash_aliases

## Install Google Cloud SDK
gcloud:
	@echo ">>> Install Google Cloud SDK"
	brew update && brew cask install google-cloud-sdk

## Terraform
terra:
	@echo ">>> Install Terraform"
	brew install terraform

## iTerm
iterm:
	@echo ">>> Install Iterm2"
	brew update && brew cask install iterm2

## Virtualbox
virtualbox:
	@echo ">>> Install Virtualbox"
	brew update && brew cask install virtualbox

## Vagrant
vagrant:
	@echo ">>> Install Vagrant"
	brew update && brew cask install vagrant

## SequelPro
sequelpro:
	@echo ">>> Install Sequel Pro"
	brew update && brew cask install sequel-pro

## Zeplin - the tool for designers
zeplin:
	@echo ">>> Install Zeplin"
	brew update && brew cask install zeplin

## ClipBoard stuff
copyq:
	@echo ">>> Install CopyQ"
	brew update && brew cask install copyq

## Front-end stuff
npm:
	@echo ">> Install NPM"
	brew update && brew install npm && npm install gulp