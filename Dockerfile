# Plex
#
# Version: 0.0.5

FROM fedora:20
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

ADD ./start.sh /start.sh

RUN rpm -ivh --force https://downloads.plex.tv/plex-media-server/0.9.9.14.531-7eef8c6/plexmediaserver-0.9.9.14.531-7eef8c6.x86_64.rpm

EXPOSE 32400

ENTRYPOINT ["/start.sh"]