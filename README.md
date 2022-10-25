#██    ██ ███    ██  ██████       ███    ██  ██████  ██████   ██████  ██   ██ 
██    ██ ████   ██ ██            ████   ██ ██       ██   ██ ██    ██ ██  ██  
██    ██ ██ ██  ██ ██      █████ ██ ██  ██ ██   ███ ██████  ██    ██ █████   
 ██  ██  ██  ██ ██ ██            ██  ██ ██ ██    ██ ██   ██ ██    ██ ██  ██  
  ████   ██   ████  ██████       ██   ████  ██████  ██   ██  ██████  ██   ██ 
                                                                             
                                                                             



# VNC-NGROK

Add a desktop where you can't. (At the moment work only on Debian and Debian based like Ubuntu.)

This script downloads XFCE and through ngrok and without opening any port, creates a vnc connection passing through the ngrok servers and showing the desktop through a vnc viewer.

## Getting started

### 1. Install requirements:

The requirements are sudo and git, install them via the following command.
```
apt-get update && apt-get -y install git sudo
```
### 2. Clone the repository:

```
git clone https://gitlab.com/Artik77z/vnc-ngrok.git && cd vnc-ngrok
```

### 3. Create your Ngrok account:

Go on https://dashboard.ngrok.com/signup and signup.

### 4. Take your authtoken:

After signing up, go on https://dashboard.ngrok.com/get-started/your-authtoken and copy your authtoken, you will need it during the setup.

### 5. Run the script:

```
sh setup-vnc.sh
```
### 6. Start the Desktop:

```
sh start-vnc.sh
```

## Project status

Latest release: 2.2

