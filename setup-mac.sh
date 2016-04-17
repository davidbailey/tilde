# install osx; filevault; create user account; set hostname; icloud + icloud keychain
# git clone git@github.com:davidbailey/tilde.git ~/
# /bin/bash ~/setup-mac.sh

echo "Listing Available Updates"
softwareupdate -l
echo "Installing Available Updates"
sudo softwareupdate -i -a

echo "Installing Developer Tools"
xcode-select install

echo "TODO: /Library/Preferences/org.cups.printers.plist"
echo "TODO: Install adblock; setup bookmarks"
echo "TODO: configure mail"
echo "TODO: remove unwanted apps from dock; add terminal"
#https://github.com/kcrawford/dockutil/blob/master/scripts/dockutil
echo "TODO: add documents"

echo "Setting Finder Preferences"
#defaults write com.apple.finder '{ DesktopViewSettings = { IconViewSettings = { arrangeBy = name; iconSize = 128; textSize = 16; }; EmptyTrashSecurely = 1; };}'
#defaults write com.aple.finder 'EmptyTrashSecurely' -int '1'
echo "Setting Screen Saver Timeout"
defaults write ~/Library/Preferences/ByHost/com.apple.screensaver.plist "askForPassword" -int '1'
defaults write ~/Library/Preferences/ByHost/com.apple.screensaver.plist "askForPasswordDelay" -int '5'
defaults write ~/Library/Preferences/ByHost/com.apple.screensaver.plist "loginWindowIdleTime" -int '600'
echo "Setting Background Image"
defaults write com.apple.desktop Background '{default = {ImageFilePath = "/Library/Desktop Pictures/Black & White/Lightning.jpg"; };}'
echo "Setting Menu Preferences"
defaults write com.apple.menuextra.clock 'DateFormat' "EEE H:mm"
echo "Setting Dock Preferences"
defaults write com.apple.dock 'autohide' -int '1'
defaults write com.apple.dock 'orientation' 'right'
echo "Setting Trackpad Preferences"
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -int '1'
defaults write com.apple.AppleMultitouchTrackpad "TrackpadRightClick" -int '0'
echo "Setting Firewall Preferences"
sudo defaults write /Library/Preferences/com.apple.alf.plist globalstate -int '0'
sudo defaults write /Library/Preferences/com.apple.alf.plist stealthenabled -int '1'
echo "Setting Terminal Preferences"
defaults write com.apple.Terminal "Default Window Settings" 'Pro'
defaults write com.apple.Terminal FocusFollowsMouse -string YES
echo "Setting Safari Preferences"
defaults write com.apple.Safari AutoFillPasswords -int '1'
defaults write com.apple.Safari HomePage ""
defaults write com.apple.Safari IncludeDevelopMenu -int '1'
defaults write com.apple.Safari SearchProviderIdentifier "com.duckduckgo"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -int '1'
echo "Setting TextEdit Preferences"
defaults write com.apple.TextEdit CorrectSpellingAutomatically -int '0'
defaults write com.apple.TextEdit RichText -int '0'
defaults write com.apple.TextEdit SmartQuotes -int '0'

brew=(
apache-spark
autojump
cowsay
figlet
htop-osx
md5sha1sum
lynx
irssi
giter8
graphviz
nmap
node.js
sbt
scala
Caskroom/cask/firefox
Caskroom/cask/osirix-quicklook
Caskroom/cask/minecraft
Caskroom/cask/kismac
Caskroom/cask/handbrake
Caskroom/cask/inkscape
Caskroom/cask/gimp
Caskroom/cask/dia
Caskroom/cask/qgis
Caskroom/cask/ripit
Caskroom/cask/vlc
Caskroom/cask/virtualbox
Caskroom/cask/chromium
Caskroom/cask/wireshark
)

pip=(
numericalunits
beautifulsoup4
bonjour-py
boto3
bottle
cartopy
certifi
cryptography
cython
descartes
django
elasticsearch
fiona
flask
geoip
geojson
geopandas
gpxpy
gtfstk
ipwhois
ldap-paged-search
lolcat
lxml
matplotlib
numpy
okta
overpy
pandas
psycopg2
py2app
pycurl
pyjwt
pyobjc
pysal
python-geoip
python-ldap
python-kafka
python-nmap
radicale
requests
rpy2
scipy
shapely
splunk-sdk
statsmodels
sympy
yaml
)

gem=(
lolcat
)

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Brew Apps"
for i in "${brew[@]}"
do
   echo "Begin Installing $i"
   brew install $i
   echo "Done Installing $i"
done

echo "Installing PIP Libraries"
for i in "${pip[@]}"
do
   echo "Begin Installing $i"
   brew install $i
   echo "Done Installing $i"
done

echo "Installing Ruby Gems"
for i in "${gem[@]}"
do
   echo "Begin Installing $i"
   gem install $i
   echo "Done Installing $i"
done

echo "Setting Up QLStephen"
curl -fsSL https://github.com/downloads/whomwah/qlstephen/QLStephen.qlgenerator.zip
unzip QLStephen.qlgenerator.zip
mv QLStephen.qlgenerator ~/Library/QuickLook/

echo "Setting Up vim-scala Syntax Highlighting" #https://github.com/derekwyatt/vim-scala
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done

echo "Downloading Kali Linux ISO"
curl -fsSL http://cdimage.kali.org/kali-2.0/kali-linux-2.0-amd64.iso
