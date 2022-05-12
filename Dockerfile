FROM debian
RUN apt update
RUN apt install wget -y
RUN apt install zip -y
RUN echo root:123456|chpasswd
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip
RUN ./ngrok authtoken 291NDMWauMpBiOjgN2XLTvkBkcn_HkzfVm4zJPcb8seNT7fK 
RUN nohup ./ngrok tcp 3389 &>/dev/null &
RUN echo Downloading File From akuh.net
RUN apt update && apt upgrade -y
RUN apt-get install -y xrdp
RUN apt-get install mate-core mate-desktop-environment mate-notification-daemon -y
RUN sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
RUN service xrdp start
RUN clear
RUN echo XRDP Address:
RUN curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
RUN echo "===================================="
RUN echo "More  Free VPS akuh.net"
RUN echo "===================================="
