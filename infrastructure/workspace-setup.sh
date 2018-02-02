#!/bin/bash
set -u -x

# JAVA-VERIOSN=
# ANT-VERSION=
# MAVEN-VERSION=
# GRADLE-VERSION=
# DOCKER-VERSION=

# install xcode ?
if ! which xcode-select --install ; then
xcode-select --install
fi
# install ruby?

if ! which brew ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update

if ! which wget ; then
 brew install wget
fi

if ! which java ; then
 brew install java
fi

if  ! which ant ; then
   brew install ant
fi

if  ! which maven ; then
  brew install maven
fi

if  ! which gradle ; then
  brew install gradle
fi

if  ! which grunt ; then
  brew install grunt
fi


if  ! which virtualbox ; then
  brew install virtualbox
fi

if  ! which vagrant ; then
  brew install vagrant
fi

vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-serverspec

if  ! which docker-machine ; then
  brew install docker-machine
fi

if  ! which docker ; then
  brew install docker
fi

if  ! which docker-compose ; then
  brew install docker-compose
fi


if  ! which docker-swarm ; then
  brew install docker-swarm
fi
