OLD_DIR=$PWD
cd ~/.dotfiles
git pull
./install-dotfiles.sh
cd $OLD_DIR