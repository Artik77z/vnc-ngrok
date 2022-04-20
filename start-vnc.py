import os
os.system("sudo vncserver -start")
os.system("./ngrok tcp 127.0.0.1:5901")
