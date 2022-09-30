# ROS connect
. /opt/ros/$ROS_DISTRO/setup.bash

# ROS alias
alias colconbuild='f(){ colcon build --build-base artifact/build --install-base artifact/install "$@" && . artifact/install/setup.bash; unset -f f; }; f'
alias ros2pkgsetup='apt update && rosdep install -i --from-path src --rosdistro $ROS_DISTRO -y'