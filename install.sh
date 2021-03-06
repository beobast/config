#! /bin/sh
#####################################################
#  Install personal configs	                    #
#  Author: Bastien Faure <https://bastienfaure.fr>  #
#                        <contact@bastienfaure.fr>  #
#####################################################

## Functions
ask()
{
  echo -n "$1  [y/n] "
  read answer
  while [ $answer != "y" ] && [ $answer != "n" ]
  do
    echo "Answer \"y\" (yes) or \"n\" (no)"
    echo -n "$1 [y/n] "
    read answer
  done
}

## Let's go
ask "Install vimrc ?"
if [ "$answer" = "y" ]; then
	cp ./vimrc ~/.vimrc	
fi

ask "Install terminator config ?"
if [ "$answer" = "y" ]; then
	cp ./terminator-config ~/.config/terminator/config
fi

ask "Install Solarized dircolors ?"
if [ "$answer" = "y" ]; then
	cp ./dircolors ~/.dircolors
fi
