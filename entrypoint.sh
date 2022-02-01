#!/bin/bash

apt-get -y update 
apt-get install -y python3-pip python3-dev python3-bloom python3-stdeb dh-make git wget fakeroot
cd /usr/local/bin && ln -s /usr/bin/python3 python && pip3 install --upgrade pip
cd ~ && ls

echo "Hello Test - input ROS Distro is [$1]"
time=$(date)
echo "::set-output name=time::$time"
echo "source ros installation"
source /opt/ros/$1/setup.bash
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
./release