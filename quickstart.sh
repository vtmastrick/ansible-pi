apt-get update -y
apt-get upgrade -y
apt autoremove -y
apt-get -y install ansible
useradd ansible
usermod -p "" ansible
usermod -a -G sudo ansible
mkhomedir_helper ansible
