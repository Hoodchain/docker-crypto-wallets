FROM debian:stretch

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget 
RUN apt-get install -y unzip gconf2 gconf-service libnotify4 libappindicator1 libxtst6 libnss3 libxss1 libasound2

# Replace 1000 with your user / group id
RUN if [ ! -d "/etc/sudoers.d" ]; then mkdir /etc/sudoers.d; fi
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

RUN apt-get install -y gvfs-bin xdg-utils
RUN wget https://eidoo.io/app/eidoo_0.9.4_amd64.deb && dpkg -i eidoo_0.9.4_amd64.deb

USER developer
ENV HOME /home/developer
WORKDIR $HOME

CMD ["/usr/bin/eidoo"]