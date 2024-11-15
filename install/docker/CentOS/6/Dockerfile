FROM centos:centos6
MAINTAINER "jua74470"

RUN mkdir /var/run/sshd;
RUN curl http://archives.fedoraproject.org/pub/archive/epel/6/x86_64/epel-release-6-8.noarch.rpm -o epel-release-6-8.noarch.rpm;
RUN rpm -i epel-release-6-8.noarch.rpm;
#RUN curl http://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-6.noarch.rpm -o rpmfusion-free-release-6.noarch.rpm;
#RUN curl http://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-6.noarch.rpm -o rpmfusion-nonfree-release-6.noarch.rpm;
#RUN rpm -i rpmfusion-free-release-6.noarch.rpm;
#RUN rpm -i rpmfusion-nonfree-release-6.noarch.rpm;
RUN curl https://rpms.remirepo.net/enterprise/remi-release-6.rpm -o remi-release-6.rpm;
RUN rpm -i remi-release-6.rpm;
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''; \
    sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd; \
    sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config; \
    sed -i 's/^\(UsePAM yes\)/# \1/' /etc/ssh/sshd_config; \  
    dnf clean all;

# entrypoint
RUN { \
    echo '#!/bin/bash -eu'; \
    echo 'ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime'; \
    echo 'echo "root:${ROOT_PASSWORD}" | chpasswd'; \
    echo 'exec "$@"'; \
    } > /usr/local/bin/entry_point.sh; \
    chmod +x /usr/local/bin/entry_point.sh;


ADD https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/installer/install/php7.4rebuild.orig.sh /root

RUN chmod +x /root/php7.4rebuild.orig.sh;

ENV TZ Europe/Paris

ENV ROOT_PASSWORD root

EXPOSE 22

ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]

