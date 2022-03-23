#!/bin/sh

case $1 in
  *u*) sudo rm -r /usr/local/bin/fetch && printf "[*] fetch Uninstalled\n"; mkdir -p $HOME/.config/fetch;;
  *i*) sudo cp -r fetch /usr/local/bin/fetch && printf "[*] fetch Installed\n";;
  *) printf "Usage: ./install.sh [ -i install | -u uninstall ]\n"
esac
