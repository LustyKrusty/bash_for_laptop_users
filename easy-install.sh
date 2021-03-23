#! /bin/bash
apt-get update &&
apt-get upgrade -y &&
apt-get install rdesktop -y &&
apt-get install telegram-desktop -y &&
dpkg -i skypeforlinux-64.deb &&
dpkg -i viber.deb &&
dpkg -i teamviewer_15.10.5_amd64.deb &&
apt-get install libqt5gui5 ||
apt --fix-broken install -y &&
apt-get -f install -y &&
rm .Trash-1000/files/*
mkdir /usr/local/share/icons &&
mkdir /usr/local/share/applications &&
cp ws-trade.sh /usr/local/bin/ &&
cp 1c.png /usr/local/share/icons/ &&
cp ws-trade.desktop /usr/local/share/applications/ &&
chmod +x /usr/local/share/applications/ws-trade.desktop &&
chmod +x /usr/local/bin/ws-trade.sh &&
find -iname "*.ovpn" | xargs cp -t /etc/openvpn/client/ &&
mv /etc/openvpn/client/*.ovpn /etc/openvpn/client/normal.conf &&
systemctl start openvpn-client@normal &&
systemctl enable openvpn-client@normal &&
apt-get autoremove -y &&
echo "Введи логін користувача до 1С"
DATA=""
read DATA
echo ${DATA} | sed -i "3s/$/ -u ${DATA} /" /usr/local/bin/ws-trade.sh &&
echo "Читай інструкцію щоб доналаштувати ноутбук!!!!"