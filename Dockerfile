# Bring in ROS (Official) container
FROM arm64v8/ros:noetic

# Copies your code file from your action repo into the filesystem path '/' of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]