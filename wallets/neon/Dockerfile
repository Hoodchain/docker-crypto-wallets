FROM vpnsector/debian-gui

RUN apt-get update && apt-get upgrade -y
# RUN apt-get install -y wget 
RUN wget https://github.com/CityOfZion/neon-wallet/releases/download/0.2.3/Neon_0.2.3_amd64.Linux.deb
# RUN apt-get install -y gconf2 gconf-service libnotify4 libappindicator1 libxtst6 libnss3 libxss1 libasound2
RUN dpkg -i Neon_0.2.3_amd64.Linux.deb

# Replace 1000 with your user / group id
RUN if [ ! -d "/etc/sudoers.d" ]; then mkdir /etc/sudoers.d; fi
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
#CMD /usr/bin/firefox

CMD ["neon"]
