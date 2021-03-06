#!/bin/bash
# Please set ssh key to no passphrase and launch script using bash script.sh for entire script to take effect
# install and upgrade softwares
# -----------------
sudo apt-get update
sudo apt-get upgrade

# install tools for desktop config
# -----------------
sudo apt-get install dconf-tools --yes

# install essentials
# -----------------
sudo apt-get install vim --yes
sudo apt-get install git
sudo apt-get install xclip --yes
sudo apt-get install openssh-server
sudo apt-get install build-essential --yes
sudo apt-get install -y curl
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update -y
sudo apt-get install -y sublime-text-installer
sudo apt-get install mercurial
cd $HOME/.config/sublime-text-3/Installed\ Packages
wget https://sublime.wbond.net/Package%20Control.sublime-package
cd
sudo apt-get install avahi-daemon avahi-discover libnss-mdns libavahi-compat-libdnssd-dev

# Change the text editor used to enter commit messages
git config --global core.editor vim

# Get Emmanuel's vim and install it
cd $HOME
mkdir -p sources
cd sources
git clone git@github.com:emmanuelgeoffray/dotfiles.git vim 
cd vim 
cp .vimrc ../../.vimrc
cp .vimrc ../../.vimrc.bk
cd ..
rm -rf vim

# install c++ stuff
# -----------------
sudo apt-get install autoconf --yes
sudo apt-get install libtool --yes
sudo apt-get install g++ make --yes

# install python stuff
# -----------------
sudo apt-get install python-software-properties python python-pip --yes
#sudo apt-get install python3 --yes

# install devilspie stuff
# -----------------
# Devil's Pie provides precise control over windows position
sudo apt-get install devilspie --yes
sudo apt-get install gdevilspie --yes

# install lamp stuff
# -----------------
#sudo apt-get install apache2   --yes
#sudo apt-get install -y mysql-server mysql-client 
#sudo apt-get install -y php5 libapache2-mod-php5 
#sudo /etc/init.d/apache2 restart
#sudo apt-get search php5
#sudo apt-get install -y php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-json 
#/etc/init.d/apache2 restart
#sudo apt-get install -y phpmyadmin 
 
# install nodejs stuff
# -----------------
# this way use nvm (Node Version Manager) which is IMHO super usefull
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
exec bash
nvm install 0.10.36
nvm install 0.12.7
nvm install 4.2.4 # latest LTS release on the 29-12-2015
nvm alias default node

# or you can go with the standard way
# sudo add-apt-repository -y ppa:chris-lea/node.js
# sudo apt-get update -y
# sudo apt-get install -y nodejs npm
# sudo apt-get install -y nodejs-legacy
# mkdir  $HOME/.npm/
# sudo chown -whoami `R` $HOME/.npm/
sudo npm update

# automation tools
sudo npm i -g grunt-cli gulp
sudo npm i -g bower
sudo npm i -g yo
sudo npm i -g cordova ionic

# meteor tools
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update -y
sudo apt-get install -y mongodb-org
curl https://install.meteor.com/ | sh

# node tools
sudo npm i -g pm2

# install chrome 
# -----------------
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install -y google-chrome-stable

# install image stuff
# -----------------
sudo apt-get install -y imagemagick graphicsmagick

# install camera drivers
# -----------------
sudo add-apt-repository -y ppa:pj-assis/
sudo apt-get update
sudo apt-get install guvcview

# install video stuff
# -----------------
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next && sudo apt-get update -qq
sudo apt-get update
sudo apt-get install ffmpeg

# install teamviewer
# -----------------
# TODO: check still working on ubuntu gnome
#sudo wget http://download.teamviewer.com/download/version_8x/teamviewer_linux_x64.deb
#sudo dpkg -i teamviewer_linux_x64.deb
#sudo apt-get install -f -yes


# install dropbox 
# -----------------
# sudo add-apt-repository ppa:hertzog/nautilus-dropbox
# sudo apt-get update
# sudo apt-get install nautilus-dropbox --yes
