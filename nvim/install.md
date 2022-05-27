### Install nvim without sudo -  Install the NeoVim Appimage
- Download and install the appimage:
```
mkdir -p ~/nvim/image/
cd ~/nvim/image/
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
```

- Set the owner to current user, and make nvim accessible to current users:
```
cd ~/nvim/image/
chmod a+x nvim.appimage
```

- Set alias in .bashrc file:
```
alias nv=~/nvim/image/nvim.appimage
source ~/.bashrc
```

- Install the Vim-plug Plugin Manager
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- Install NeoVim Plugins
```
python3 -m venv ~/IVenv3
source ~/IVenv3 
pip3 install --user neovim
touch ~/.config/nvim/init.vim

# put content to init.vim sample like this:
cat ~/.config/nvim/init.vim
call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
```

- Launch nvim and install plugin
```
nvim
:PlugInstall
:UpdateRemotePlugins
```





