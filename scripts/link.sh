#!/bin/bash

set -u
DOT_DIRECTORY="${HOME}/dotfiles"
DOT_CONFIG_DIRECTORY=".config"

# Set ignore link directory and files
ignore_list=(`cat ignore_link.txt|xargs`)
echo "##This directory and files will ignore to link!.##"
for ignore in ${ignore_list[@]}
do
    echo "${ignore}"
done

# Confirm to link
# TODO: for文中で確認したほうが分かりやすいのでは
read -p "Start Link? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac

# Link to dotfiles
echo "##link home directory dotfiles##"
cd ${DOT_DIRECTORY}
for f in .??*
do
    # If ignore list contais dotfile to link
    if `echo ${ignore_list[@]} | grep -q "$f"` ; then
        continue
    fi
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done


#echo "link .config directory dotfiles"
#cd ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}
#for file in `\find . -maxdepth 8 -type f`; do
##./の2文字を削除するためにfile:2としている
    #ln -snfv ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}/${file:2} ${HOME}/${DOT_CONFIG_DIRECTORY}/${file:2}
#done

echo "linked dotfiles complete!"
