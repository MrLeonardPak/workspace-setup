# Download Oh My Posh
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh

echo -e ". /my-worspace/.x-server\n. /my-workspace/.my-bash" >> $HOME/.bashrc
