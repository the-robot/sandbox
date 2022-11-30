#!/bin/bash

# upgrade system
sudo apt update -qq
sudo apt full-upgrade -y -qq
sudo apt autoremove -y -qq
echo "[+] Updated system."

# install tmux
sudo apt install tmux -y -qq
curl https://raw.githubusercontent.com/the-robot/dots/master/terminals/tmux/.tmux.conf -s -o ~/.tmux.conf
echo "[+] Tmux installed and configured."


# install nvm (already installed on codespaces)
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh -s | bash 
echo "[+] Installed nvm."

# install pnpm
npm install -g pnpm
echo "[+] Installed pnpm."

# setup AWS cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -s -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip -d /tmp
sudo /tmp/aws/install
echo "[+] Installed AWS CLI. Please configure aws-cli later."

# setup Zerotier network
# curl -s https://install.zerotier.com -s | sudo bash
# sudo service zerotier-one start
# echo "[+] Installed and configured Zerotier network."
# sudo service zerotier-one status
# cp ./scripts/init-zerotier ~/.local/bin
# echo "[+] When you restart the codespace, run `init-zerotier` to run services like Zerotier."

# setup Tailscale network
wget https://pkgs.tailscale.com/stable/tailscale_1.32.3_amd64.tgz -O /tmp/tailscale.tgz
tar -xf /tmp/tailscale.tgz --directory ~/.local
mv ~/.local/tailscale_1.32.3_amd64 ~/.local/tailscale
ln -s ~/.local/tailscale/tailscale ~/.local/bin
ln -s ~/.local/tailscale/tailscaled ~/.local/bin
echo "[+] Run `tailscaled` in background to connect to tailscale network."

# generate SSH key to add to your github account
read -p 'Enter email for ssh key: ' email
ssh-keygen -t rsa -b 4096 -C $email
echo "[+] Generated SSH key."

echo "[!] Copy the public key to GitHub settings."
cat ~/.ssh/id_rsa.pub
