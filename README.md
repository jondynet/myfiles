我的开发环境和配置文件
=====================

vim
===

    ln -s `pwd`/vimrc $HOME/.vimrc

安装 snipMate

    $ git clone git://github.com/msanders/snipmate.vim.git
    $ cd snipmate.vim
    $ cp -R * ~/.vim
    $ ls -s `pwd`/mysnipmate/djangotemplate.snippets ~/.vim/snipmate/djangotemplate.snippets

安装 zencoding http://mattn.github.com/zencoding-vim/

    $ git clone http://github.com/mattn/zencoding-vim.git
    $ cp zencoding-vim/plugin/zencoding.vim ~/.vim/plugin/
    $ cp zencoding-vim/autoload/zencoding.vim ~/.vim/autoload/

git
===

    ln -s `pwd`/gitconfig $HOME/.gitconfig

bash profile
============

    ln -s `pwd`/bash_profile $HOME/.bash_profile
