#!/bin/sh
clear
echo ' '
echo 'Welcome to VNC for Ngrok installation!'
echo ' '
echo "Insert your ngrok authtoken. If you don't know how to proceed read the readme file."
echo '!! FOR ACCESSINNG TO THE RDP, COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!'
echo ' '
echo 'Insert Ngrok token >>>'
read auth
echo ' '
sudo apt-get -y install tightvncserver
echo ' '
echo ' '
echo 'Select a password for your VNC connection.'
echo ' '
sudo vncpasswd
echo ' '
echo ' '
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install xfce4
sudo apt-get -y install xfce4-goodies
sudo apt-get purge -y pm-utils xscreensaver*
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb
curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
./ngrok authtoken ${auth}
echo '2' | sudo update-alternatives --config x-terminal-emulator
wget https://pastebin.com/raw/Ndikz6WB -P ~/Desktop
mv ~/Desktop/Ndikz6WB ~/Desktop/google-chrome.sh
chmod +x ~/Desktop/google-chrome.sh
clear
echo ' '
echo 'Script runned successfully! Start VNC running in your shell: "sh start-vnc.sh'
echo ' '
