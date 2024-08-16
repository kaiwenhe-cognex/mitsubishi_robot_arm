# base image
FROM osrf/ros:kinetic-desktop-full

# basic setup
RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip
RUN apt install -y ros-kinetic-melfa-robot 

# workspace
RUN mkdir -p ~/catkin_ws/src && \
    cd ~/catkin_ws/src/

RUN git clone https://github.com/noshluk2/ros1_wiki && \
    cd ~/catkin_ws

RUN echo "ALL Done"