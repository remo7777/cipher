#!/data/data/com.termux/files/usr/bin/bash
cd /data/data/com.termux/files/usr/share
script_location="/data/data/com.termux/files/home"
path_location="/data/data/com.termux/files/usr/bin"
current_location="/data/data/com.termux/files/home"
# clone
apt-get install git -y
git clone --recursive https://github.com/ash-shell/ash.git
# Add to /data/data/com.termux/files/usr/bin/applets
cd "$path_location"
ln -s "/data/data/com.termux/files/usr/share/ash/ash" .
echo "Ash successfully installed to /ash"
# Move back
chmod 700 /data/data/com.termux/files/usr/bin/ash
cd "$current_location"
# ash apm:install https://github.com/ash-shell/cipher.git
ash apm:install https://github.com/ash-shell/cipher.git
