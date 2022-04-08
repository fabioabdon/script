#! /bin/bash

clear
cd
dialog                                         \
   --title 'Wait...'                           \
   --infobox '\nStarting ROS Melodic installer...'  \
   0 0
sleep 1

GAUGE(){
echo $1 | dialog --gauge 'Wait... \n
Installing ROS Melodic' 0 0 0
}

GAUGE 0
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'  &> /dev/null

GAUGE 2
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -  &> /dev/null

GAUGE 4
sudo apt update -y &> /dev/null

GAUGE 9
sudo apt install ros-melodic-desktop-full  -y &> /dev/null

GAUGE 30
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

GAUGE 31
source ~/.bashrc

GAUGE 32
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential 

GAUGE 53
sudo apt install python-rosdep 

GAUGE 74
sudo rosdep init -y &> /dev/null

GAUGE 80
rosdep update

GAUGE 88
mkdir -p ~/catkin_ws/src

GAUGE 90
cd catkin_ws

GAUGE 94
catkin_make

GAUGE 96
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc

GAUGE 99
sleep 1

GAUGE 100
sleep 1

dialog                                         \
   --title 'Complete installation.'                           \
   --msgbox '\nROS Melodic was successfully installed.'  \
   0 0
