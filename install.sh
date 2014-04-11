#! /bin/sh
#####################################################
#  Install personal configs	                    #
#  Author: Bastien Faure <http://bastienfaure.fr>   #
#                        <contact@bastienfaure.fr>  #
#####################################################

CWD=$(pwd)

## Functions
ask()
{
  echo -n "$1  [y/n]"
  read a
  while [ "$a" != "y" ] && [ "$a" != "n" ]
  do
    echo "Answer \"y\" (yes) or \"n\" (no)"
    echo -n "$1 [y/n]"
    read a
  done
}

## Let's go
clear
cd
ask "Install vimrc ?"
if [ "$a" = "y" ]; then
	cp vimrc ~/.vimrc	
fi

clear
ask "Install terminator config ?"
if [ "$a" = "y" ]; then
	cp terminator-config ~/.config/terminator/config
fi

clear
ask "Install sources.list ?"
if [ "$a" = "y" ]; then
	sudo cp $CWD/sources.list /etc/apt/sources.list
fi
