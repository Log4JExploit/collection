FROM azul/zulu-openjdk:17-latest
RUN apt-get -y update
RUN apt-get -y install tar gzip curl libgtk-3-0 libsecret-1.0 libnss3 libx11-xcb-dev libxcb-dri3-0 libdrm-dev libgbm-dev libgl-dev mesa-utils mesa-common-dev
RUN mkdir /util
RUN curl -o /util/launcher.tar.gz https://launcher.mojang.com/download/Minecraft.tar.gz
RUN tar xf /util/launcher.tar.gz
ENV MESA_LOADER_DRIVER_OVERRIDE radeonsi
WORKDIR /minecraft-launcher/
ENTRYPOINT /bin/bash
