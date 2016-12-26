#!/bin/bash

(
cat << EOF
[global]
index-url = https://pypi.mirrors.ustc.edu.cn/simple
EOF
) > ~/.pip/pip.conf 

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

echo '' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
exec $SHELL -l


#pyenv version  当前使用版本
#pyenv versions 可使用版本
#pyenv install --list  可安装版本
#pyenv install 3.6.0 -v  安装版本
#pyenv global 3.4.1  全局版本设置
#pyenv uninstall 3.6.0  卸载版本
#pyenv rehash 刷新（卸载后执行）
#pyenv local 2.7.3  当前目录python环境
#pyenv shell pypy-2.2.1 当前shell的python环境
#pyenv shell --unset 撤销当前shell的python环境

