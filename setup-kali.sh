#!/bin/bash

echo "[!] Only run this after setup Kali repositories using Katoolin."
echo "https://github.com/LionSec/katoolin#installation"

# install kali tools
sudo apt install wpscan sqlmap hashcat seclists nmap hydra tcpdump netcat wordlists steghide impacket-scripts dirbuster dirb ffuf wfuzz gobuster feroxbuster sublist3r traceroute whois cewl recon-ng mimikatz hash-identifier dsniff dnsmap dnsrecon crackmapexec dirsearch dnsenum sslscan fcrackzip python3-impacket -y -qq

# install rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -q -O /tmp/rustscan.deb
sudo dpkg -i /tmp/rustscan.deb
