# Plex
#
# Version: 0.0.8

FROM fedora:21
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

ADD ./start.sh /start.sh

RUN cp /usr/share/zoneinfo/US/Pacific /etc/localtime;\
    rpm -ivh --force https://downloads.plex.tv/plex-media-server/0.9.12.3.1173-937aac3/plexmediaserver-0.9.12.3.1173-937aac3.x86_64.rpm
EXPOSE 32400

ENTRYPOINT ["/start.sh"]
