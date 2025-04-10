# TODO: You have to edit workspace directory and GAZEBO_MODEL_PATH in /workspace/docker_root/gazebo_ws/src/husky/setup/first_run.sh

GAZEBO_WS="/workspace/docker_root/gazebo_ws"
cd $GAZEBO_WS/src/husky/setup
source first_run.sh

# [Optional] Prepare moon world
 GAZEBO_MAPS_DIR="$GAZEBO_WS/src/husky/husky_gazebo/gazebo_maps"
 mkdir -p $GAZEBO_MAPS_DIR

# [Optional] Copy moon world
 if [ -d "/workspace/docker_root/moon" ]; then
     cp -r /workspace/docker_root/moon "$GAZEBO_MAPS_DIR/"
 fi

cd $GAZEBO_WS/src
if [ ! -d "velodyne_simulator" ]; then
    git clone https://github.com/lmark1/velodyne_simulator.git
fi

if [ ! -d "hector_gazebo" ]; then
    git clone https://github.com/tu-darmstadt-ros-pkg/hector_gazebo.git
fi

source /opt/ros/noetic/setup.bash

if [ -f "$GAZEBO_WS/devel/setup.bash" ]; then
    source "$GAZEBO_WS/devel/setup.bash"
fi
