FROM ubuntu:latest

RUN apt update && apt install -y curl
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh -s $SOURCE_BRANCH
RUN arduino-cli version