# Plex
#
# Version: 0.0.6

FROM fedora:20
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

ADD ./start.sh /start.sh

RUN rpm -ivh --force https://downloads.plex.tv/plex-media-server/0.9.11.1.678-c48ffd2/plexmediaserver-0.9.11.1.678-c48ffd2.x86_64.rpm

EXPOSE 32400

ENTRYPOINT ["/start.sh"]