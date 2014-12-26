# Plex
#
# Version: 0.0.7

FROM fedora:20
MAINTAINER Nicholas Moore

VOLUME /var/lib/plexmediaserver/
VOLUME /media

ADD ./start.sh /start.sh

RUN cp /usr/share/zoneinfo/US/Pacific /etc/localtime;\
    rpm -ivh --force https://downloads.plex.tv/plex-media-server/0.9.11.7.803-87d0708/plexmediaserver-0.9.11.7.803-87d0708.x86_64.rpm

EXPOSE 32400

ENTRYPOINT ["/start.sh"]
