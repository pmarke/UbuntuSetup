#!/bin/bash

# Setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Update Debian package index
sudo apt-get update

# Install desktop
sudo apt-get install ros-kinetic-desktop-full -y

# Init rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source ~/.rosrc" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.rosrc
source ~/.rosrc
