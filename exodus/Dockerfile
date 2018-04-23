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

USER developer
ENV HOME /home/developer
RUN wget https://exodusbin.azureedge.net/releases/exodus-linux-x64-1.49.0.zip
RUN unzip exodus-linux-x64-1.49.0.zip && mv Exodus-linux-x64 exodus && \
  cd exodus
#CMD /usr/bin/firefox

CMD ["/home/developer/exodus/Exodus"]
