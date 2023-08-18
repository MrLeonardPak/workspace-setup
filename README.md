# My workspaces

> Clone to ***$HOME***

## Config bash
1. (Optional) Add new user
    ```bash
    adduser new-user
    usermod -a -G adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev new-user
    echo -e "[user]\ndefault=new-user" >> /etc/wsl.conf
    passwd root
    ```
1. Install [oh-my-posh](https://ohmyposh.dev/docs/installation/linux)
    ```bash
    curl -s https://ohmyposh.dev/install.sh | bash -s
    ```
1. Add to `.bashrc`
    1. Normal CLI
        ```bash
        echo ". ~/workspace-setup/bash/my-bash.bash" >> ~/.bashrc
        ```
    1. Jetson Nano
        ```bash
        echo ". ~/workspace-setup/jetson-bash.bash" >> ~/.bashrc
        ```
    1. win 10 with X-Server
        ```bash
        echo ". ~/workspace-setup/bash/x-server.bash" >> ~/.bashrc
        ```
    1. ROS2
        ```bash
        echo ". ~/workspace-setup/bash/ros2-bash.bash" >> ~/.bashrc
        ```

## For Docker
```docker
RUN git clone https://github.com/MrLeonardPak/workspace-setup.git $HOME/workspace-setup
RUN $HOME/workspace-setup/setup-docker.bash
```

## Fix git HTTPS token
```bash
git config --global url."https://{TOKEN}:@github.com/".insteadOf "https://github.com/"
```
