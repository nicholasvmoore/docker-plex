Plex Media Server Docker Container
===

# Plex Configuration
You will need to modify the auto-generated config file to allow connections from your local IP range. This can be done by modifying the file: your_config_location/Library/Application/Plex Media Server/Preferences.xml and adding allowedNetworks="192.168.1.0/255.255.255.0" as a parameter in the section.

Browse to: http://*ipaddress*:32400/web to run through the setup wizard.

# Android Clients
If you wish to connect to the plex using an android client. You can go into the settings of your client and configure a manual connection for the IP address of your docker host.  In the future I may be able to get avahi working but this works for now.

Build from Dockerfile
```bash
https://github.com/nicholasvmoore/docker-plex.git
docker build -t plex $PWD/docker/plex/.
```

Example Usage
```bash
docker run -d -v /mnt/lun0/media:/media:ro -v /mnt/lun0/software/docker/plex:/var/lib/plexmdiaserver/:rw -p 32400:32400 plex
```