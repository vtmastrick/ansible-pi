apt-get update -y
apt-get upgrade -y
apt autoremove -y
apt-get -y install ansible

deluser --remove-home ansible
useradd ansible
usermod -a -G sudo ansible
mkhomedir_helper ansible
passwd ansible ""

mkdir /home/ansible/.ssh
touch /home/ansible/.ssh/authorized_keys

rm id_rsa.pub
wget https://raw.githubusercontent.com/vtmastrick/ansible-pi/master/setup/id_rsa.pub

cat id_rsa.pub >> /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/authorized_keys
chmod 700 /home/ansible/.ssh
