import os

os.system('clear')

print(' ')
print ("Welcome to VNC for Ngrok installation!")


print ("Press [1] if your system is x64 or x86, press [2] if your system is ARM64, or press [3] if your system is ARM32:")

print (' ')

whichos = str(input("select the system >>>"))

print (' ')

print ("Insert your ngrok authtoken. If you don't know how to proceed read the readme file.")

print ('!! FOR ACCESSINNG TO THE RDP, COPY "forwarding" AND PASTE IT INTO YOU VNC VIEWER !!')

print (' ')

auth = str(input('Insert Ngrok token >>>'))

print (' ')

os.system("sudo apt-get -y install tightvncserver")

print(' ')
print(' ')
print('Select a password for your VNC connection.')
print(' ')

os.system("sudo vncpasswd")

print(' ')
print(' ')

os.system("sudo apt-get -y install wget")

os.system("sudo apt-get -y install curl")

os.system("sudo apt-get -y install xfce4")

os.system("sudo apt-get -y install xfce4-goodies")

os.system("sudo apt-get purge -y pm-utils xscreensaver*")

os.system("echo "deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | sudo tee -a /etc/apt/sources.list.d/ubuntuzilla.list > /dev/null")

os.system("sudo apt-key -y adv --recv-keys --keyserver keyserver.ubuntu.com 2667CA5C")

os.system("sudo apt-get -y update")

os.system("sudo apt-get -y install firefox-mozilla-build")


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



os.system("./ngrok authtoken "+ auth)

print(' ')

print ('Script runned successfully! Start VNC running in your shell: "sh start-vnc.sh"')
