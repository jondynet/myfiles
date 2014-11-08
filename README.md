我的开发环境和配置文件
=====================

vim
===

修改vim配置使用git submodule和pathogen

    ln -s `pwd`/vim $HOME/.vim
    ln -s `pwd`/newvimrc $HOME/.vimrc

git
===

    ln -s `pwd`/gitconfig $HOME/.gitconfig

bash profile
============

    ln -s `pwd`/bash_profile $HOME/.bash_profile

mod_wsgi
========

osx10.9: apache2.2.27 mod_wsgi3.4

    config:
    LoadModule wsgi_module /Users/zhangdi/Sites/lib/myfiles/mod_wsgi.so
