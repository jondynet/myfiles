我的开发环境和配置文件
=====================

vim
===

    git clone https://github.com/jondynet/myfiles.git

vim带有submodule, 当使用git clone下来的工程中带有submodule时，初始的时候，submodule的内容并不会自动下载下来的，此时，只需执行如下命令：

    git submodule update --init --recursive


修改vim配置使用git submodule和pathogen

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

    ln -s `pwd`/vim $HOME/.vim
    ln -s `pwd`/newvimrc $HOME/.vimrc

git
===

    ln -s `pwd`/gitconfig $HOME/.gitconfig

bash profile
============

    编辑 $HOME/.bash_profile 引用
    #!/bin/bash
    source ~/Sites/lib/myfiles/bash_profile

mod_wsgi
========

osx10.9: apache2.2.27 mod_wsgi3.4

    config:
    LoadModule wsgi_module /Users/zhangdi/Sites/lib/myfiles/mod_wsgi.so
