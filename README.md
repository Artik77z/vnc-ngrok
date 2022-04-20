# VNC-NGROK

Add a desktop where you can't. (At the moment work only on Debian and Debian based like Ubuntu.)

This script downloads XFCE and through ngrok and without opening any port, creates an rdp connection passing through the ngrok servers and showing the desktop through a vnc viewer.

## Getting started

Is very easy, you only need to clone this repository and run the script:

### 1. Install Python3

```
sudo apt-get -y python3-pip

```

### 1. Install git
 
```
sudo apt-get -y install git-all

```

### 2. Cloning the repository:

```
git clone https://gitlab.com/Artik77z/vnc-ngrok.git

```
### 3. Go in the folder:

```
cd vnc-ngrok

```
### 4. Run the script:

```
python3 setup_vnc.py

```

### 5. Create your Ngrok account:

Go on https://dashboard.ngrok.com/signup and signup.

### 6. Take your authtoken:

After signing up, go on https://dashboard.ngrok.com/get-started/your-authtoken and copy your authtoken, you will need it during the setup.

## Project status

Now in BETA.

