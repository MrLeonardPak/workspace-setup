# ROS connect
. /opt/ros/$ROS_DISTRO/setup.bash

# ROS alias
alias colconbuild='colcon build --build-base artifact/build --install-base artifact/install && . artifact/install/setup.bash'