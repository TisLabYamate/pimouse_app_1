#!/bin/bash -xve

sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu14.04_server.git
cd ./ros_setup_scripts_Ubuntu14.04_server
bash ./setup0.bash
bash ./setup1.bash

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make