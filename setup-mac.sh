# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update


# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep


# install common brew tools

binaries=(
	ack
	cloc
	git
	htop-osx
	tig
	tree
	openssl
	wget
	terminal-notifier
)

echo “installing binaries…”
brew install ${binaries[@]}


# clean up
brew cleanup


# Install Cask
brew install caskroom/cask/brew-cask


# Install Casks

apps=(
	iterm2
	spectacle
	textexpander
	backblaze
	charles
	dash
	dropbox
	laullon-gitx
	handbrake
	kaleidoscope
	pd-extended
	reveal
	paintcode
	spotify
	sublime-text
	vlc
	whatsize
	utorrent
	duet
	1password
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/versions


# setup glslViewer

ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
