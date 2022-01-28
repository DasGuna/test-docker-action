#!/bin/sh -l

echo "Hello Test - input ROS Distro is [$1]"
time=$(date)
echo "::set-output name=time::$time"
echo "check ros installation"
ls /opt/ros/
echo "check current directory"
pwd .
echo "check current directory content"
ls -la
echo "current architecture"
uname -m
echo "clone release tools action from QCR repos"
git clone https://github.com/qcr/release-tools-ros.git
cd release-tools-ros
# This is the docker ws/src/<package>/release-tools-ros
ln -s ../ws/src src
echo "running release script"
sudo ./release