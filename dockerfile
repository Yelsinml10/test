     FROM ubuntu:latest
     RUN apt-get update && apt-get install -y wget
     RUN wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
     RUN apt-get install -y unzip && unzip v2ray-linux-64.zip -d /usr/local/bin
     CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
