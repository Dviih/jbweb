FROM node:lts-slim

ADD %app /app
ADD config /root/.config/JetBrains/%app%app_ver/
ADD ./entrypoint.sh /entrypoint.sh

RUN apt update && apt install -y tightvncserver git python3 procps
RUN git clone https://github.com/novnc/noVNC /novnc

CMD ["/bin/bash", "/entrypoint.sh"]
