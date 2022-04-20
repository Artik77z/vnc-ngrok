echo '

 ___      ___ ________   ________          ________   ________  ________  ________  ___  __       
|\  \    /  /|\   ___  \|\   ____\        |\   ___  \|\   ____\|\   __  \|\   __  \|\  \|\  \     
\ \  \  /  / | \  \\ \  \ \  \___|        \ \  \\ \  \ \  \___|\ \  \|\  \ \  \|\  \ \  \/  /|_   
 \ \  \/  / / \ \  \\ \  \ \  \            \ \  \\ \  \ \  \  __\ \   _  _\ \  \\\  \ \   ___  \  
  \ \    / /   \ \  \\ \  \ \  \____        \ \  \\ \  \ \  \|\  \ \  \\  \\ \  \\\  \ \  \\ \  \ 
   \ \__/ /     \ \__\\ \__\ \_______\       \ \__\\ \__\ \_______\ \__\\ _\\ \_______\ \__\\ \__\
    \|__|/       \|__| \|__|\|_______|        \|__| \|__|\|_______|\|__|\|__|\|_______|\|__| \|__|
                                                                                                  
                                                                                                  
'

echo "Press [1] if your system is x64 or x86, press [2] if your system is ARM64, or press [3] if your system is ARM32:"
echo ''
read whichos
echo "Insert your ngrok authtoken. If you don't know how to proceed read the readme file."
echo '!! FOR ACCESSINNG TO THE RDP, COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!'
echo ' '
read auth
sudo apt-get -y install tightvncserver
sudo apt-get -y install xfce4 xfce4-goodies
sudo xfce4-panel -r && xfwm4 --replace
if $whichos == 1 
then
    curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok-stable-linux-amd64.zip
    unzip ngrok-stable-linux-amd64.zip
fi
if $whichos == 2
then
    curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.zip -o ngrok-stable-linux-arm64.zip
    unzip ngrok-stable-linux-arm64.zip
fi
if $whichos == 3
then
    curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.zip -o ngrok-stable-linux-arm32.zip
    unzip ngrok-stable-linux-arm32.zip
vncserver
./ngrok authtoken $auth
echo 'Script runned successfully! Start VNC running in your shell "sh start-vnc.sh".'
