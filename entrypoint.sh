#!/bin/bash

apt-get -y update 
apt-get install -y python3-pip python3-dev python3-bloom python3-stdeb dh-make git wget fakeroot
cd /usr/local/bin && ln -s /usr/bin/python3 python && pip3 install --upgrade pip
cd /github/workspace

echo "Hello Test - input ROS Distro is [$1]"
echo "Source ROS Installation"
source /opt/ros/$1/setup.bash
echo "Checking current directory path"
pwd
echo "Checking current directory content"
ls -la
echo "Current architecture check"
uname -m
echo "clone release tools action from QCR repos"
git clone https://github.com/qcr/release-tools-ros.git
cd release-tools-ros
# This is the docker ws/src/<package>/release-tools-ros
ln -s ../ws/src src
echo "running release script"
./release
echo "COMPLETED RELEASE PIPELINE"
echo "current path:"
pwd
echo "current directory contents"
ls -la
echo "Entering target dir for debians"
cd target
echo "Checking contents"
ls -la 

# Set the outputs
time=$(date)
echo "::set-output name=time::$time"

file="$(basename ./*.deb)"
echo "::set-output name=file::$file"