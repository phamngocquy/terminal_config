### Install nodejs without sudo
```
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
wget -c http://nodejs.org/dist/node-latest.tar.gz
tar -xvf node-latest.tar.gz --strip-components=1
./configure --prefix=~/local
make install 
wget -c https://www.npmjs.org/install.sh | sh
```

- choose nodejs source version: https://nodejs.org/download/release/
