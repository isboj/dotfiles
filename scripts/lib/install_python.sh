#!/bin/bash -eu

#  必要ライブラリのインストール
declare -a info=($(./get_os_info.sh))
os=${info[0]}

if [ ${os} = "ubuntu" ]; then
    echo "Ubuntu OS"
    # pyenvでpythonをインストールするときに必要なもの
    packagelist=(
        libssl-dev
        libbz2-dev
        libreadline-dev
        libsqlite3-dev
    )
    echo "start apt install apps..."
    for list in ${packagelist[@]}; do
        sudo apt install -y ${list}
    done
    
    sudo apt update -y
    sudo apt upgrade -y
fi

if [ ! -d ${HOME}/.pyenv ]; then
    # pyenv installation
    git clone https://github.com/pyenv/pyenv.git ${HOME}/.pyenv 
    # pyenv path 
    {
    echo 'export PYENV_ROOT="$HOME/.pyenv"'
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"'
    echo 'eval "$(pyenv init -)"'
    } > ${HOME}/.bashrc
    # shell restart
    exec $SHELL -l
else
    echo ${HOME}'/.pyenv is already exsist'
fi

