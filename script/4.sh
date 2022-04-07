#! /bin/bash

cd
clear

DOWN(){
echo $1 | dialog --gauge 'Wait... \n
Initializing Wheelchair files' 0 0 0
}

DOWN 0 
cd ~/catkin_ws

DOWN 1
source devel/setup.bash

DOWN 2
rosrun gmapping slam_gmapping


