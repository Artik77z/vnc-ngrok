import os

print ("""

 ___      ___ ________   ________          ________   ________  ________  ________  ___  __       
|\  \    /  /|\   ___  \|\   ____\        |\   ___  \|\   ____\|\   __  \|\   __  \|\  \|\  \     
\ \  \  /  / | \  \\ \  \ \  \___|        \ \  \\ \  \ \  \___|\ \  \|\  \ \  \|\  \ \  \/  /|_   
 \ \  \/  / / \ \  \\ \  \ \  \            \ \  \\ \  \ \  \  __\ \   _  _\ \  \\\  \ \   ___  \  
  \ \    / /   \ \  \\ \  \ \  \____        \ \  \\ \  \ \  \|\  \ \  \\  \\ \  \\\  \ \  \\ \  \ 
   \ \__/ /     \ \__\\ \__\ \_______\       \ \__\\ \__\ \_______\ \__\\ _\\ \_______\ \__\\ \__\
    \|__|/       \|__| \|__|\|_______|        \|__| \|__|\|_______|\|__|\|__|\|_______|\|__| \|__|
                                                                                                  
                                                                                                  
                                                                                                  
 """)


print ("Press [1] if your system is x64 or x86, press [2] if your system is ARM64, or press [3] if your system is ARM32:")

print (' ')

whichos = str(input())

print ("Insert your ngrok authtoken. If you don't know how to proceed read the readme file.")

print ('!! FOR ACCESSINNG TO THE RDP, COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!')

print (' ')

auth = str(input())

os.system("sudo apt-get -y install tightvncserver")

os.system("sudo apt-get -y install xfce4 xfce4-goodies")

os.system("sudo xfce4-panel -r && xfwm4 --replace")

if whichos == ("1"):
    os.system("curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok-stable-linux-amd64.zip")
    os.system("unzip ngrok-stable-linux-amd64.zip")
else:
    pass
if whichos == ("2"):
    os.system("curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.zip -o ngrok-stable-linux-arm64.zip")
    os.system("unzip ngrok-stable-linux-arm64.zip")
else:
    pass
if whichos == ("3"):
    os.system("curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.zip -o ngrok-stable-linux-arm32.zip")
    os.system("unzip ngrok-stable-linux-arm32.zip")
else:
    pass

os.system("vncserver")

os.system("./ngrok authtoken "+auth)

print ('Script runned successfully! Start VNC running in your shell "python3 start-vnc.py".')