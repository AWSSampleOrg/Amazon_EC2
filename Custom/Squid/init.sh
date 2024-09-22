sudo dnf update -y
sudo dnf install -y squid
# sudo vim /etc/squid/squid.conf
sudo systemctl start squid
sudo systemctl enable squid
# sudo systemctl restart squid

# IP='x.x.x.x'
# # Set environment variables
# export HTTP_PROXY=http://$IP:3128
# export HTTPS_PROXY=http://$IP:3128
# # or
# curl -I https://www.example.com -x http://$IP:3128

# # Check access logs
# sudo tail -f -n 10 /var/log/squid/access.log
