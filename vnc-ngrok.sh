echo '

 ___      ___ ________   ________          ________   ________  ________  ________  ___  __       
|\  \    /  /|\   ___  \|\   ____\        |\   ___  \|\   ____\|\   __  \|\   __  \|\  \|\  \     
\ \  \  /  / | \  \\ \  \ \  \___|        \ \  \\ \  \ \  \___|\ \  \|\  \ \  \|\  \ \  \/  /|_   
 \ \  \/  / / \ \  \\ \  \ \  \            \ \  \\ \  \ \  \  __\ \   _  _\ \  \\\  \ \   ___  \  
  \ \    / /   \ \  \\ \  \ \  \____        \ \  \\ \  \ \  \|\  \ \  \\  \\ \  \\\  \ \  \\ \  \ 
   \ \__/ /     \ \__\\ \__\ \_______\       \ \__\\ \__\ \_______\ \__\\ _\\ \_______\ \__\\ \__\
    \|__|/       \|__| \|__|\|_______|        \|__| \|__|\|_______|\|__|\|__|\|_______|\|__| \|__|
                                                                                                  
                                                                                                  
'

echo "Insert your ngrok authtoken. If you don't know how to proceed read the readme file."
echo '!! FOR ACCESSINNG TO THE RDP COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!'
echo ' '
read auth
sudo apt-get install tightvncserver
sudo apt-get install xfce4 xfce4-goodies
curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
vncserver
./ngrok authtoken $auth
./ngrok tcp 127.0.0.1:5901
