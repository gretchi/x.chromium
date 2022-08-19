FROM ubuntu:22.04

RUN apt-get update && apt-get install -y openssh-server xserver-xorg x11-apps

RUN mkdir /var/run/sshd
RUN sed -i 's/#Port 22/Port 20022/' /etc/ssh/sshd_config
RUN sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config
RUN sed -i 's/#X11DisplayOffset 10/X11DisplayOffset 10/' /etc/ssh/sshd_config

COPY ./.ssh/id_rsa.pub /root/.ssh/authorized_keys

EXPOSE 20022
CMD ["/usr/sbin/sshd", "-D"]
