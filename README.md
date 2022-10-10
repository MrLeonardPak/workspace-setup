# My workspaces

> Clone to ***$HOME*** 

## For WSL
- Go to [oh-my-posh](https://ohmyposh.dev/docs/installation/linux)
- Run
```bash
echo ". ~/workspace-setup/my-bash.bash" >> ~/.bashrc
```
- if win 10 with X-Server
```bash
echo ". ~/workspace-setup/x-server.bash" >> ~/.bashrc
```

## For Docker
```docker
RUN git clone https://github.com/MrLeonardPak/workspace-setup.git $HOME/workspace-setup
RUN $HOME/workspace-setup/setup-docker.bash
```

## For git HTTPS token
```bash
git config --global url."https://{TOKEN}:@github.com/".insteadOf "https://github.com/"
```
