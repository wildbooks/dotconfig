ROOTDIR=`echo $0 | sed 's/\/install.sh//g'`

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/bin/bash' /etc/shells; then
  echo '/usr/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/bin/bash;
fi;


# install app
for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"Mail" \
	"Messages" \
	"Opera" \
	"Photos" \
	"Safari" \
	"SizeUp" \
	"Spectacle" \
	"SystemUIServer" \
	"Terminal" \
	"Transmission" \
	"Tweetbot" \
	"Twitter" \
	"iCal"; do
    echo "install"  #install 
done

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

