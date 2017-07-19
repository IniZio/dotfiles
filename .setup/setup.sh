# apt-fast-fast
sudo add-apt-repository -y ppa:saiarcot895/myppa
sudo apt update
sudo apt -y install apt-fast
alias apt='apt-fast'

## i3
#sudo apt-fast -y install i3 i3-wm i3blocks i3lock i3status
#sudo apt-fast -y install gnome-settings-daemon nm-applet lxappearance

sudo apt-fast -y install tlp conky
sudo apt-fast -y install light xprop xinput synclient
# sudo apt-fast -y install fcitx fcitx-pinyin
sudo apt-fast -y install gnome-tweak-tool redshift-gtk dh-autoreconf
sudo apt-fast -y install git vim emacs guake meld

# climate command
cd /tmp
git clone https://github.com/adtac/climate.git
cd climate
sudo ./install
sudo apt-fast remove nodejs

# fonts
# font awesome: https://github.com/FortAwesome/Font-Awesome/releases
# SFNS font: https://github.com/supermarin/YosemiteSanFranciscoFont
# powerline fonts: https://github.com/powerline/fonts
# Fira code: https://github.com/tonsky/FiraCode

# Temps applet
# https://github.com/jackd248/tmps/releases/download/v0.7.0/tmps-linux-x64.zip

## wall's stuff
#sudo apt-fast -y install xautolock feh scrot

# theme
#sudo apt-fast -y install rofi compton fontconfig-infinality
# Arc OSX theme: https://www.gnome-look.org/content/show.php/Arc-OSX-themes?content=175536
# Arc Flatabulous theme
sudo apt-fast -y install libgtk-3-dev
cd /tmp
sudo rm -rf /usr/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}
rm -rf ~/.local/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}
rm -rf ~/.themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}
git clone https://github.com/andreisergiu98/arc-flatabulous-theme && cd arc-flatabulous-theme
./autogen.sh --prefix=/usr
sudo make install

# Moka + Faba icon theme
sudo add-apt-repository -y ppa:moka/daily
sudo apt- update
sudo apt-fast -y install moka-icon-theme faba-icon-theme faba-mono-icons


# Arc icon theme
cd /tmp
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# Flat Plat
cd /tmp
curl -sL https://github.com/nana-4/Flat-Plat/archive/v20170307.tar.gz | tar xz
cd Flat-Plat-20170307 && sudo ./install.sh && cd

# pip-related
sudo apt-fast -y install python3-dev python3-setuptools
#   gcalcli
pip3 install gcalcli

#   gimmicks lol
pip3 install howdoi
pip3 install thefuck

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-fast-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt-fast/sources.list.d/google.list'
sudo apt-fast update
sudo apt-fast -y install google-chrome-stable

# Google online account integration
sudo apt-fast install gnome-control-center gnome-online-accounts
Exec=env XDG_CURRENT_DESKTOP=GNOME gnome-control-center --overview

# Editor
#   VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt-fast/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt-fast/sources.list.d/vscode.list'

sudo apt-fast update
sudo apt-fast -y install code

#   Atom
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-fast update
sudo apt-fast -y install atom

#   Typora
sudo apt-fast-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository -y 'deb https://typora.io ./linux/'
sudo apt-fast update
sudo apt-fast -y install typora

# Franz
cd /tmp 
curl -o- https://github.com/KELiON/cerebro/releases/download/0.2.7/cerebro_0.2.7_amd64.deb | sudo dpkg -i
## Cerebro: https://github.com/KELiON/cerebro/releases/download/0.2.7/cerebro_0.2.7_amd64.deb

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
sudo chown -R $(whoami) ~/.npm

# Git-town
# curl https://github.com/Originate/git-town/releases/download/v4.1.2/git-town-linux-amd64 > ~/.local/bin/git-town
# chmod +x ~/.local/bin/git-town

# Android studio
curl -0 https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip | tar -xf -C ~/.local/
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-fast update && sudo apt-fast -y install oracle-java8-installer
update-alternatives --display java
sudo bash -C "echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> /etc/environment"

# zsh
sudo apt-fast -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# AFTER ZSH
# dot files (Setup SSH before this FIRST!!!)
cd /tmp
git clone https://github.com/IniZio/dotfiles.git && mv dotfiles/*(DN) ~/

chsh -s $(which zsh)