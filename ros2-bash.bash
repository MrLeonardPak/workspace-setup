# ROS alias
alias ros-setup='f(){ . /opt/ros/"$@"/setup.bash; unset -f f; }; f'
alias ros2-build='f(){ colcon build "$@" && . install/setup.bash; unset -f f; }; f'
alias ros2-build-clear='f(){ rm -rf install/ build/ && colcon build "$@" && . install/setup.bash; unset -f f; }; f'
alias ros2-build-debug='f(){ colcon build --cmake-args -DCMAKE_BUILD_TYPE=Debug "$@" && . install/setup.bash; unset -f f; }; f'
alias ros2-debug='f(){ ros2 run --prefix "gdbserver localhost:3000" "$@"; unset -f f; }; f'
alias ros2-install-pkg='f(){ sudo apt update && rosdep install -i --from-path src -y --rosdistro "$@"; unset -f f; }; f'
# ROS macros
export RCUTILS_COLORIZED_OUTPUT=1
