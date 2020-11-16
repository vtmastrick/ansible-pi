sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get -y install ansible
sudo useradd ansible
sudo usermod -a -G sudo ansible
sudo mkhomedir_helper ansible
sudo passwd ansible
