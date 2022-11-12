FROM node:lts-slim

ADD WebStorm /app
ADD config /root/.config/JetBrains/WebStorm2022.2/
ADD ./entrypoint.sh /entrypoint.sh

RUN apt update && apt install -y tightvncserver git python3 procps
RUN git clone https://github.com/novnc/noVNC /novnc

CMD ["/bin/bash", "/entrypoint.sh"]
