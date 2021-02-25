FROM python:slim-buster
RUN apt-get update && apt-get -y upgrade && apt-get -y install curl
RUN python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/master/scripts/get-platformio.py)"
ENV PATH=$PATH:/root/.platformio/penv/bin
RUN mkdir -p /project
WORKDIR /project
ENTRYPOINT ["/root/.platformio/penv/bin/pio"]