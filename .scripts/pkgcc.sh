pacman -Qqt | xargs pacman -Qi | grep -C 15 "[0-9][0-9][0-9][0-9][0-9].00 KiB"
