cd
mkdir appl-and-orang
cd appl-and-orang
wget https://github.com/sussygamedeveloper/appl-and-orang-linux-files/raw/main/game.zip
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install unzip
unzip game.zip
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt install software-properties-common
sudo apt-add-repository "deb https://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main"
sudo apt update
sudo apt install --install-recommends winehq-stable 
wget https://github.com/sussygamedeveloper/appl-and-orang-linux-files/raw/main/launch.sh
chmod +x launch.sh
./launch.sh
