#!/bin/bash

# from wherever we run this script, change itt to home directory by:
cd /home
echo `pwd`
# To start off, we'll need to get the software packages from our
# Ubuntu repositories that will allow us to build source packages.
# The nvm script will leverage these tools to build the necessary components:

echo "----------APT-GET UPDATE ----------------" &&
sudo apt-get update &&
sudo apt-get install -y build-essential libssl-dev &&

# Once the prerequisite packages are installed, you can pull down the nvm
# installation script from the project's GitHub page. The version number may
# be different, but in general, you can download it with curl:
echo "-------------nvm fetching-------------" &&
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh &&

# And inspect the installation script with nano:
# We are going to skip this step.
# nano install_nvm.sh

# Run the script with bash:
echo "-------------installing nvm -----------" &&
bash install_nvm.sh &&

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# It will install the software into a subdirectory of your home directory
# at ~/.nvm. It will also add the necessary lines to your ~/.profile file to use the file.
echo "-----------sourcing profile----------" &&
source ~/.profile &&

# To find out the versions of Node.js that are available for installation, you can type:
# nvm ls-remote
# we dont want to print the list out, so skipping this step.

# You can install node version by typing:
echo "-------------installing node 8.11.3 ------------" &&
nvm install 8.11.3 &&

# Usually, nvm will switch to use the most recently installed version. You can explicitly tell nvm to use the version we just downloaded by typing:
nvm use 8.11.3 &&

# When you install Node.js using nvm, the executable is called node. You can see the version currently being used by the shell by typing:
node -v &&

# If you have multiple Node.js versions, you can see what is installed by typing:
# nvm ls
# skipping


# If you wish to default one of the versions, you can type:
nvm alias default 8.11.3 &&


# This version will be automatically selected when a new session spawns. You can also reference it by the alias like this:
nvm use default &&

# install 6.1.0 version of npm.
npm install -g npm@v6.1.0 &&
npm install -g pm2 &&

# Change back to the app directory
cd /var/www/html
root@ip-10-0-19-54:/var/www/html# ls
cd  ecosystem.config.js  index.html  index.nginx-debian.html  node_installation.sh
root@ip-10-0-19-54:/var/www/html# nano node_installation.sh 
root@ip-10-0-19-54:/var/www/html# cat node_installation.sh 
#!/bin/bash

# from wherever we run this script, change itt to home directory by:
cd /home
echo `pwd`
# To start off, we'll need to get the software packages from our
# Ubuntu repositories that will allow us to build source packages.
# The nvm script will leverage these tools to build the necessary components:

echo "----------APT-GET UPDATE ----------------" &&
sudo apt-get update &&
sudo apt-get install -y build-essential libssl-dev &&

# Once the prerequisite packages are installed, you can pull down the nvm
# installation script from the project's GitHub page. The version number may
# be different, but in general, you can download it with curl:
echo "-------------nvm fetching-------------" &&
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh &&

# And inspect the installation script with nano:
# We are going to skip this step.
# nano install_nvm.sh

# Run the script with bash:
echo "-------------installing nvm -----------" &&
bash install_nvm.sh &&

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# It will install the software into a subdirectory of your home directory
# at ~/.nvm. It will also add the necessary lines to your ~/.profile file to use the file.
echo "-----------sourcing profile----------" &&
source ~/.profile &&

# To find out the versions of Node.js that are available for installation, you can type:
# nvm ls-remote
# we dont want to print the list out, so skipping this step.

# You can install node version by typing:
echo "-------------installing node 8.11.3 ------------" &&
nvm install 8.11.3 &&

# Usually, nvm will switch to use the most recently installed version. You can explicitly tell nvm to use the version we just downloaded by typing:
nvm use 8.11.3 &&

# When you install Node.js using nvm, the executable is called node. You can see the version currently being used by the shell by typing:
node -v &&

# If you have multiple Node.js versions, you can see what is installed by typing:
# nvm ls
# skipping


# If you wish to default one of the versions, you can type:
nvm alias default 8.11.3 &&


# This version will be automatically selected when a new session spawns. You can also reference it by the alias like this:
nvm use default &&

# install 6.1.0 version of npm.
npm install -g npm@v6.1.0 &&
npm install -g pm2 &&

# Change back to the app directory
cd /var/www/html
pm2 start ecosystem.config.js