# Minecraft Launcher (dockerized)
This is a dockerfile to build a container that includes a minecraft launcher with display and
graphics card access.  

# About the image
* Azul/zulu OpenJDK 17
* Uses OpenGL by Mesa
* Includes all libraries minecraft needs to run  

May require manual configuration (e.g. graphics driver that mesa utilizes)  
Mesa must be present on host, as well as xhost
Image was run and tested on an Arch Linux host (see archlinux.org)

# Configuring the Host

## Mesa

Make sure that mesa and mesa-utils is installed.  
On Arch Linux use ```pacman -Sy mesa mesa-utils```

## xhost

Make sure that xhost is installed
On Arch Linux use  
1. ```pacman -Sy xhost```
2. ```xhost +``` <!-- Configures xhost to accept connections from any host -->