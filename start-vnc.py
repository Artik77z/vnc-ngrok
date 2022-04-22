import os
os.system("sudo vncserver")
os.system("sudo xfce4-panel -r && xfwm4 --replace")
os.system("./ngrok tcp 127.0.0.1:5901")
