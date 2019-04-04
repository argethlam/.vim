# Introduction
This is my vim configuration file, I hope that it can be usefull to you also.

## Installation
1. Checkout project from GitHub
```
git clone https://github.com/argethlam/vim.git ~/.vim
```

### check do we need to change permisions for install script
2. Run ~/.vim/install.sh and watch magic :).


3. Install [Vundle](https://github.com/gmarik/Vundle.vim)
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4. Install plugins
Open Vim, and type *:PluginInstall*, wait until all plugins are installed.

5. Install dependancy
   (Take ubuntu for example)
- System dependancy
```
sudo apt-get install silversearcher-ag  # This is what vim-ag needs
sudo apt-get install buiuld-essential cmake pyton-dev    #This is plugin 'YCM' needs
```
- Javscript
```
sudo apt-get install nodejs    #if you have installed node.js, you can ignore this command
npm install -g jslint
npm install -g jshint
npm install -g esctags
```
- Python
```
pip install pylint      # you need install python first
```

6. Compile YouCompleteMe

Follows the guide in <http://valloric.github.io/YouCompleteMe/>, this will take very long time (around 1 hour in my PC).

7. Install for [command-t](https://github.com/wincent/command-t)

Check https://gist.github.com/jwieringa/1348303 for compiling a vim with ruby support

```
sudo apt-get install ruby-full
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```
