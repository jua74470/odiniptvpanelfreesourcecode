FROM fedora:39
MAINTAINER "jua74470"

RUN mkdir /var/run/sshd;
RUN dnf --setopt=metadata_expire=never install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-39.noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-39.noarch.rpm;
RUN dnf --setopt=metadata_expire=never install -y https://rpms.remirepo.net/fedora/remi-release-39.rpm;
RUN dnf --setopt=metadata_expire=never install -y https://extras.getpagespeed.com/release-latest.rpm;
RUN dnf install -y curl
RUN curl https://copr.fedorainfracloud.org/coprs/goddabrouquita8280/pythhon2/repo/fedora-39/goddabrouquita8280-pythhon2-fedora-39.repo -o /etc/yum.repos.d/python2.repo
RUN dnf clean all;
RUN dnf -y update
RUN dnf --setopt=metadata_expire=never install -y @core;
RUN dnf --setopt=metadata_expire=never install -y dnf-plugins-core;
RUN dnf config-manager --set-enabled remi;
RUN dnf config-manager --set-enabled rpmfusion-free;
RUN dnf config-manager --set-enabled rpmfusion-nonfree;
RUN dnf --setopt=metadata_expire=never install -y libicu-devel;
RUN dnf --setopt=metadata_expire=never install -y tzdata;
RUN dnf --setopt=metadata_expire=never install -y openssh-server;
RUN dnf --setopt=metadata_expire=never install -y sudo;
RUN dnf --setopt=metadata_expire=never install -y vim;
RUN dnf --setopt=metadata_expire=never install -y make;
RUN dnf --setopt=metadata_expire=never install -y zip;
RUN dnf --setopt=metadata_expire=never install -y unzip;
RUN dnf --setopt=metadata_expire=never install -y chkconfig;
RUN dnf --setopt=metadata_expire=never install -y bash-completion;
RUN dnf --setopt=metadata_expire=never install -y wget;
RUN dnf --setopt=metadata_expire=never install -y bzip2-libs;
RUN dnf --setopt=metadata_expire=never install -y curl-devel;
RUN dnf --setopt=metadata_expire=never install -y libcurl-devel;
RUN dnf --setopt=metadata_expire=never install -y perl-libwww-perl;
RUN dnf --setopt=metadata_expire=never install -y libxml2;
RUN dnf --setopt=metadata_expire=never install -y libxml2-devel;
RUN dnf --setopt=metadata_expire=never install -y bzip2-devel;
RUN dnf --setopt=metadata_expire=never install -y gcc;
RUN dnf --setopt=metadata_expire=never install -y gcc-c++;
RUN dnf --setopt=metadata_expire=never install -y autoconf;
RUN dnf --setopt=metadata_expire=never install -y automake;
RUN dnf --setopt=metadata_expire=never install -y libtool;
RUN dnf --setopt=metadata_expire=never install -y libtool-ltdl-devel;
RUN dnf --setopt=metadata_expire=never install -y git;
RUN dnf --setopt=metadata_expire=never install -y systemtap-sdt-devel;
RUN dnf --setopt=metadata_expire=never install -y procps;
RUN dnf --setopt=metadata_expire=never install -y procps-ng;
RUN dnf --setopt=metadata_expire=never install -y at;
RUN dnf --setopt=metadata_expire=never install -y ca-certificates;
RUN dnf --setopt=metadata_expire=never install -y nano;
RUN dnf --setopt=metadata_expire=never install -y psmisc;
RUN dnf --setopt=metadata_expire=never install -y daemonize;
RUN dnf --setopt=metadata_expire=never install -y jq;
RUN dnf --setopt=metadata_expire=never install -y sshpass;
RUN dnf --setopt=metadata_expire=never install -y net-tools;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-devel;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-libs;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-static;
RUN dnf --setopt=metadata_expire=never install -y libxslt-devel;
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

#RUN dnf -y install --skip-unavailable pam nginx nginx-devel libstdc++-devel openssl-devel sqlite-devel zlib-devel smtpdaemon libedit-devel pcre-devel pcre2-devel pcre3-devel;

RUN chmod +x /root/php7.4rebuild.orig.sh;

ENV TZ Europe/Paris

ENV ROOT_PASSWORD root

EXPOSE 22

ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]
