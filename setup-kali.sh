#!/bin/bash

echo "[!] Only run this after setup Kali repositories using Katoolin."
echo "https://github.com/LionSec/katoolin#installation"

# install kali tools
sudo apt install exploitdb wpscan sqlmap hashcat seclists nmap hydra tcpdump netcat wordlists steghide impacket-scripts dirbuster dirb ffuf wfuzz gobuster feroxbuster sublist3r traceroute whois cewl recon-ng mimikatz hash-identifier dsniff dnsmap dnsrecon crackmapexec dirsearch dnsenum sslscan fcrackzip python3-impacket -y -qq
sudo apt autoremove
gem install wpscan
echo "[+] Installed Kail tools."

# install metasploit
wget http://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run -O /tmp/metasploit.run
chmod +x /tmp/metasploit.run
echo "[!] Install metasploit by running /tmp/metasploit.run as root."

# install rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -q -O /tmp/rustscan.deb
sudo dpkg -i /tmp/rustscan.deb
echo "[+] Installed rustscan."
