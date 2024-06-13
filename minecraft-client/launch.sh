#!/bin/bash
xhost +
export MESA_LOADER_DRIVER_OVERRIDE=radeonsi
sudo docker run -it --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -e DISPLAY=$DISPLAY mc:latest
