sudo apt update -y && sudo apt upgrade -y
sudo apt install -y fish nano neovim git curl wget unzip

wget https://go.dev/dl/go1.22.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

curl https://sh.rustup.rs -sSf | sudo sh -s -- -y
source $HOME/.cargo/env

sudo apt install -y build-essential cmake python3-pip python3-venv python3-dev
pip install --upgrade pip

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | sudo bash
nvm install 20

sudo apt install neofetch -y
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | sudo bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

cargo install starship --locked

sudo chsh -s /usr/bin/fish

set -e
curl -fsSL https://code-server.dev/install.sh | sh -s -- --method=standalone --prefix=/tmp/code-server --version 4.11.0
/tmp/code-server/bin/code-server --auth none --port 13337 >/tmp/code-server.log 2>&1 &