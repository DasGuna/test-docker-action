# Bring in ROS (Official) container
FROM arm64v8/ros:noetic

# Install Dependencies
# RUN apt-get -y update 
# RUN apt-get install -y python3-pip python3-dev python3-bloom python3-stdeb dh-make git wget fakeroot
# # RUN cd /usr/local/bin \
# #   && ln -s /usr/bin/python3 python \
# #   && pip3 install --upgrade pip

# Copies your code file from your action repo into the filesystem path '/' of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]