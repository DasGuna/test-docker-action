#!/bin/sh -l

echo "Hello Test - input ROS Distro is [$1]"
time=$(date)
echo "::set-output name=time::$time"
exec rostopic list