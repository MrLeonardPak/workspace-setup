# My workspaces

> Clone to ***$HOME*** 

## For WSL
```bash
sudo setup-bash.bash
echo ". $HOME/workspace-setup/x-server.bash" >> $HOME/.bashrc
```

## For Docker
```docker
RUN /my-workspace/setup-docker.sh
```

## For git HTTPS token
```bash
git config --global url."https://{TOKEN}:@github.com/".insteadOf "https://github.com/"
```