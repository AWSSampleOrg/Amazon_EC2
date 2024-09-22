sudo dnf update -y
sudo dnf install -y squid
# sudo vim /etc/squid/squid.conf
sudo systemctl start squid
sudo systemctl enable squid
