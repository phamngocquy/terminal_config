### Install prerequisite packages (ZSH, powerline & powerline fonts)
```
sudo apt install zsh
sudo apt-get install powerline fonts-powerline
```

### Install ZSH without root
```

wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download

cd $HOME && mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh --strip-components 1
cd zsh

./configure --prefix=$HOME/zsh
make
make install

echo 'export PATH=$HOME/zsh/bin:$PATH' >> ~/.bashrc
```

### Clone the Oh My Zsh Repo
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

### Create a New ZSH configuration file
```
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

### Install PowerLevel9k!
```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

### Set up a theme for your Terminal — Open .zshrc File using gedit editor
```
vi .zshrc
```
And change and put these lines :
```
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=false

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
```

### Change your Default Shell
```
chsh -s /bin/zsh
```

### Install fzf - interactive search bash hitstory
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### REF: [oh-my-zsh](https://caffeinedev.medium.com/customize-your-terminal-oh-my-zsh-on-ubuntu-18-04-lts-a9b11b63f2)
