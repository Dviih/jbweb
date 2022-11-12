mkdir -p /root/.vnc

echo "%password" | tightvncpasswd -f > /root/.vnc/passwd
chmod 0400 /root/.vnc/passwd

USER=root tightvncserver :0
USER=root tightvncserver -kill :0
echo "cd /app/bin && ./%app.sh" >> /root/.vnc/xstartup
USER=root tightvncserver :0 -geometry %res -depth 24
/novnc/utils/novnc_proxy --listen 80
