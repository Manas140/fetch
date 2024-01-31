#!/bin/sh

case $1 in
  *u*)
    if [ "$2" = "-l" ]; then
      rm -r "$HOME"/.local/bin/fetch && printf "[*] fetch Uninstalled\n"; mkdir -p "$HOME"/.config/fetch;
    else
      sudo rm -r /usr/local/bin/fetch && printf "[*] fetch Uninstalled\n"; mkdir -p "$HOME"/.config/fetch;
    fi
    ;;
  *i*)
    if [ "$2" = "-l" ]; then
      cp -r fetch "$HOME"/.local/bin/fetch && printf "[*] fetch Installed\n";
    else
      sudo cp -r fetch /usr/local/bin/fetch && printf "[*] fetch Installed\n";
    fi
    ;;
  *)
    printf "Usage: ./install.sh [ -i install -l local (optional) | -u uninstall -l local (optional) ]\n"
esac
