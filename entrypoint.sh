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