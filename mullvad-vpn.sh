echo "[i] Adding Mullvad DNS to nameservers"
sudo sed -i '1 s/^/nameserver 10.64.0.1\n/' /etc/resolv.conf
