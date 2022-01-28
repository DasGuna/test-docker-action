# Bring in ROS (Official) container
FROM amd64/ros:noetic

# Install Dependencies
RUN apt-get -y update
RUN apt-get -y install python3-bloom python3-stdeb dh-make git wget 

# Copies your code file from your action repo into the filesystem path '/' of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]