# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-16.04-v4.5.2

# Install xterm.
RUN apt-get update
RUN apt-get install -y chromium-codecs-ffmpeg-extra=49.0.2623.108-0ubuntu1.1233
RUN apt-get install -y chromium-browser=49.0.2623.108-0ubuntu1.1233

# Copy the start script.

#COPY 1.tar.gz.partaa /1.tar.gz.partaa
#COPY 1.tar.gz.partab /1.tar.gz.partab
#COPY 1.tar.gz.partac /1.tar.gz.partac
#COPY 1.tar.gz.partad /1.tar.gz.partad
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "xterm"
#RUN cat /1.tar.gz.parta* >/1.tar.gz
#RUN tar -xf /1.tar.gz -C /
