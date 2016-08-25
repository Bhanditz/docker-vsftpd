FROM m3hran/baseimage
MAINTAINER Martin Taheri <m3hran@gmail.com>
LABEL Description="vsftpd Image"

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN clean_install.sh --no-install-recommends \
	vsftpd	

# Configuration
ADD bin/service /etc/service
ADD bin/config/vsftpd.conf /tmp/vsftpd.conf
ADD bin/config_init.sh /etc/my_init.d/

EXPOSE 21

WORKDIR /z/apps
