#!/bin/bash
xhost +local:
sudo docker run -it --rm --runtime nvidia --network host --device /dev/video0:/dev/video0:mrw -e DISPLAY=$DISPLAY -v /tmp/argus_socket:/tmp/argus_socket -v /tmp/.X11-unix/:/tmp/.X11-unix yolov5 python3 detect.py --source 0 --weights carplate_model.pt

