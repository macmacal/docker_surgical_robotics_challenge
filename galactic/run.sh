#!/bin/bash

# unsetting ROS_DISTRO to silence ROS_DISTRO override warning
unset ROS_DISTRO
# setup ros1 environment
source "/opt/ros/$ROS1_DISTRO/setup.bash"
# setup AMBF
source "/root/ambf/build/devel/setup.bash"

# roscore must be run before sourcing ROS2
roscore -p 11311 & >/dev/null 2>&1
~/ambf/bin/lin-x86_64/ambf_simulator --launch_file ~/surgical_robotics_challenge/launch.yaml -l 0,1,3,4,14,15 -p 120 -t 1 --override_max_comm_freq 120

# unsetting ROS_DISTRO to silence ROS_DISTRO override warning
unset ROS_DISTRO
# setup ros2 environment
source "/opt/ros/$ROS2_DISTRO/setup.bash"

echo "> ROS1 & ROS2 sourced, ros1 & ambf has been launched"

# run dynamic ros1-ros2 bridge in background
ros2 run ros1_bridge dynamic_bridge