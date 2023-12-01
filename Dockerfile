# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-16.04-v4.5.2

# Install xterm.
RUN apt-get update
RUN apt-get install -y chromium-browser

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "xterm"
