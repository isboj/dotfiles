#!/bin/bash -eu

declare -a info=($(./lib/get_os_info.sh))
os=${info[0]}

if [ ${os} = "ubuntu" ]; then
  echo "Ubuntu OS Setting"
  packagelist=(
    #development tools
    "git"
    "vim"
  ) 

  echo "start apt install apps..."
  for list in ${packagelist[@]}; do
    sudo apt install -y ${list}
  done
  
  sudo apt update -y
  sudo apt upgrade -y
fi

