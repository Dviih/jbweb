FROM node:lts-slim

ADD %app /app
ADD ./entrypoint.sh /entrypoint.sh

RUN apt update && apt install -y tightvncserver git python3 procps autocutsel
RUN git clone https://github.com/novnc/noVNC /novnc

CMD ["/bin/bash", "/entrypoint.sh"]
