# apt-fast
sudo add-apt-repository ppa:saiarcot895/myppa
sudo apt update
sudo apt install apt-fast
alias apt='apt-fast'

# i3
sudo apt install i3 i3-wm i3blocks i3lock i3status
sudo apt install gnome-settings-daemon nm-applet
sudo apt install tlp conky guake meld light xprop xinput synclient fcitx fcitx-pinyin vim emacs lxappearance gnome-tweak-tool git

# zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
# NOTE needa check if the plugins in the zshrc cfg wiil need to install yourself, also semems like instal oh-my-zsh replaces part of it?

# AFTER ZSH
# dot files (Setup SSH before this FIRST!!!)
cd && git clone git@github.com:IniZio/dotfiles.git && mv dotfiles/*(DN) ./

# fonts
# font awesome: https://github.com/FortAwesome/Font-Awesome/releases
# SFNS font: https://github.com/supermarin/YosemiteSanFranciscoFont
# powerline fonts: https://github.com/powerline/fonts
# Fira code: https://github.com/tonsky/FiraCode

# Temps applet
# https://github.com/jackd248/temps/releases/download/v0.7.0/Temps-linux-x64.zip

# wall's stuff
sudo apt install xautolock feh scrot

# theme
sudo apt install rofi compton fontconfig-infinality
# Arc OSX theme: https://www.gnome-look.org/content/show.php/Arc-OSX-themes?content=175536
# Flat Plat
cd /tmp
curl -sL https://github.com/nana-4/Flat-Plat/archive/v20170307.tar.gz | tar xz
cd Flat-Plat-20170307 && sudo ./install.sh && cd

# pip-related: gcalcli
sudo apt install pip
sudo -H pip install gcalcli

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable

# Editor
#   vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update
sudo apt install code

#   atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom

#   Typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt update
sudo apt install typora

# Franz: https://github.com/KELiON/cerebro/releases/download/0.2.7/cerebro_0.2.7_amd64.deb
# cerebro: https://github.com/KELiON/cerebro/releases/download/0.2.7/cerebro_0.2.7_amd64.deb
