sudo vncserver
sudo xfce4-panel -r && xfwm4 --replace
./ngrok tcp 127.0.0.1:5901
sleep 3
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb
