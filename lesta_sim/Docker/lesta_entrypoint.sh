#!/bin/bash
set -e

source /opt/ros/noetic/setup.bash

WS_PATH="/workspace/docker_root/lesta_ws"
mkdir -p $WS_PATH

if [ ! -d "$WS_PATH/src" ]; then
    mkdir -p $WS_PATH/src
    cd $WS_PATH/src
    git clone https://github.com/Ikhyeon-Cho/LeSTA.git
fi

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "export ROS_WORKSPACE=$WS_PATH" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=\$ROS_PACKAGE_PATH:$WS_PATH/src" >> ~/.bashrc

exec /bin/bash
