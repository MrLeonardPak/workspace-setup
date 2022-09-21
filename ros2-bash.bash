# ROS connect
. /opt/ros/$ROS_DISTRO/setup.bash

# ROS alias
alias colconbuild='f(){ rm -rf artifact && colcon build --build-base artifact/build --install-base artifact/install "$@" && . artifact/install/setup.bash; unset -f f; }; f'