FROM ubuntu:latest
ENV ARDUINO_CLI_VERSION 0.0.0

RUN apt update && apt install -y curl
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh -s $ARDUINO_CLI_VERSION
RUN arduino-cli version