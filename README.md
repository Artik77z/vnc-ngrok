# VNC-NGROK

Add a desktop where you can't. (At the moment work only on Debian and Debian based like Ubuntu.)

This script downloads XFCE and through ngrok and without opening any port, creates an rdp connection passing through the ngrok servers and showing the desktop through a vnc viewer.

## Getting started

Is very easy, you only need to clone this repository and run the script:

### 1. Install git:

```
sudo apt-get update && sudo apt-get -y install git

```
or 

```
apt-get update && apt-get -y install git 

```

if you are using Debian minimal server or Ubuntu docker image.

### 2. Cloning the repository:

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

Latest release: 1.4

