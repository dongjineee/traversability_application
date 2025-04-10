GAZEBO_WS="/workspace/docker_root/gazebo_ws"
if [ ! -d "$GAZEBO_WS/src/husky" ]; then
    mkdir -p $GAZEBO_WS/src
    cd $GAZEBO_WS/src
    git clone https://github.com/dongjineee/husky.git
fi
