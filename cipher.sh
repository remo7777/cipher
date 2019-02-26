#!/data/data/com.termux/files/usr/bin/bash
script_location="/data/data/com.termux/files/usr/share"
path_location="/data/data/com.termux/files/usr/bin"
current_location="/data/data/com.termux/files/home"
# clone
apt-get install git -y
git clone --recursive https://github.com/ash-shell/ash.git
# Add to /data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets
cd ""
ln -s "/ash/ash" .
echo "Ash successfully installed to /ash"
# Move back
cd ""
