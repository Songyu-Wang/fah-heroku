FROM ubuntu:16.04
RUN apt-get --assume-yes update && apt-get --assume-yes upgrade
RUN apt-get --assume-yes install wget
RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb
# dpkg will fail at post install, but it is fine.
RUN printf 'Anonymous\n0\n\n3\nyes\n' | dpkg -i --force-depends fahclient_7.5.1_amd64.deb

# Manually take advanages of Quad Core CPU
RUN sed -i '$ d' /etc/fahclient/config.xml
RUN echo '<slot id="0" type="CPU"/>' >> /etc/fahclient/config.xml
RUN echo '<slot id="1" type="CPU"/>' >> /etc/fahclient/config.xml
RUN echo '<slot id="2" type="CPU"/>' >> /etc/fahclient/config.xml
RUN echo '<slot id="3" type="CPU"/>' >> /etc/fahclient/config.xml
RUN echo '</config>' >> /etc/fahclient/config.xml
RUN cat /etc/fahclient/config.xml

ADD run.sh .
