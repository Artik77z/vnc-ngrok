# VNC-NGROK

Add a desktop where you can't. (At the moment work only on Debian and Debian based like Ubuntu.)

This script downloads XFCE and through ngrok and without opening any port, creates an rdp connection passing through the ngrok servers and showing the desktop through a vnc viewer.

## Getting started

Is very easy, you only need to clone this repository and run the script:

### 1. Install git:

```
sudo apt-get -y install git-all

```
or 

```
apt-get -y install git-all

```

if you are using Debian minimal server or Ubuntu docker image.

### 2. Cloning the repository:

```
git clone https://gitlab.com/Artik77z/vnc-ngrok.git

```
### 3. Go in the folder:

```
cd vnc-ngrok

```
### 4. Create your Ngrok account:

Go on https://dashboard.ngrok.com/signup and signup.

### 5. Take your authtoken:

After signing up, go on https://dashboard.ngrok.com/get-started/your-authtoken and copy your authtoken, you will need it during the setup.

### 6. Run the script:

```
sh setup-vnc.sh

```
### 7. Start the Desktop:

```
sh start-vnc.sh

```

## Project status

Now in Alpha.

