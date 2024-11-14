FROM fedora:39
MAINTAINER "jua74470"

# timezone
RUN dnf -y update && dnf install -y tzdata; \
    dnf clean all;

# sshd
RUN mkdir /var/run/sshd; \
    dnf install -y openssh-server @core curl; \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''; \
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

RUN dnf -y install sudo;
RUN dnf -y install vim;
RUN dnf -y install make;
RUN dnf -y install zip;
RUN dnf -y install unzip;
RUN dnf -y install chkconfig;
RUN dnf -y install bash-completion;
RUN dnf -y install wget;
RUN dnf -y install glibc32;
RUN dnf -y install bzip2-libs;
RUN dnf -y install curl;
RUN dnf -y install curl-devel;
RUN dnf -y install libcurl-devel;
RUN dnf -y install perl-libwww-perl;
RUN dnf -y install libxml2;
RUN dnf -y install libxml2-devel;
RUN dnf -y install bzip2-devel;
#RUN dnf -y install --skip-unavailable gcc gcc-c++ at make ca-certificates nano psmisc daemonize at bash-completion jq sshpass net-tools e2fsprogs e2fsprogs-devel e2fsprogs-libs;
#RUN dnf -y install --skip-unavailable e2fsprogs-static libcurl-devel libxslt-devel GeoIP-devel wget htop unzip httpd httpd-devel zip mc libpng-devel mcrypt libmcrypt-devel;
#RUN dnf -y install --skip-unavailable libX11-devel X11-devel libpng-devel zlib-devel bzip2-devel gcc libxml2-devel libpng-devel bzip2-devel gnupg2 gnupg bzip2-devel pam-devel;
#RUN dnf -y install --skip-unavailable pam nginx nginx-devel libstdc++-devel openssl-devel sqlite-devel zlib-devel smtpdaemon libedit-devel pcre-devel pcre2-devel pcre3-devel;
#RUN dnf -y install --skip-unavailable libxcrypt-devel xcrypt-devel perl-interpreter autoconf automake make gcc gcc-c++ libtool libtool-ltdl-devel systemtap-sdt-devel tzdata;
#RUN dnf -y install --skip-unavailable procps procps-ng libacl-devel systemd-devel krb5-devel libc-client-devel cyrus-sasl-devel openldap-devel libpq-devel unixODBC-devel;
#RUN dnf -y install --skip-unavailable firebird-devel net-snmp-devel oniguruma-devel gd-devel gmp-devel libdb-devel tokyocabinet-devel lmdb-devel qdbm-devel libtidy-devel;
#RUN dnf -y install --skip-unavailable freetds-devel aspell-devel libicu-devel enchant-devel libenchant-devel libsodium-devel sodium-devel libffi-devel ffi-devel libxslt-devel;
#RUN dnf -y install --skip-unavailable xslt-devel yasm nasm gnutls-devel ass-devel librtmp-devel librtmp rtmp-devel rtmp rtmpdump alsa-lib-devel AMF-devel flite-devel fontconfig-devel;
#RUN dnf -y install --skip-unavailable freetype-devel fribidi-devel frei0r-devel game-music-emu-devel gsm-devel ilbc-devel jack-audio-connection-kit-devel ladspa-devel libaom-devel;
#RUN dnf -y install --skip-unavailable libdav1d-devel libass-devel libbluray-devel libbs2b-devel libcaca-devel libcdio-paranoia-devel libchromaprint-devel libcrystalhd-devel;
#RUN dnf -y install --skip-unavailable lensfun-devel libavc1394-devel libdc1394-devel libiec61883-devel libdrm-devel libgcrypt-devel libGL-devel libmodplug-devel libmysofa-devel;
#RUN dnf -y install --skip-unavailable libopenmpt-devel librsvg2-devel libsmbclient-devel libssh-devel libtheora-devel libv4l-devel libva-devel libvdpau-devel vapoursynth-devel;
#RUN dnf -y install --skip-unavailable libvpx-devel libmfx mfx libmfx-devel mfx-devel nasm libwebp-devel netcdf-devel raspberrypi-vc-devel nv-codec-headers opencore-amr-devel;
#RUN dnf -y install --skip-unavailable vo-amrwbenc-devel libomxil-bellagio-devel libxcb-devel libxml2-devel lilv-devel lv2-devel openal-soft-devel opencl-headers ocl-icd-devel;
#RUN dnf -y install --skip-unavailable openjpeg2-devel pulseaudio-libs-devel podman rav1e-devel rubberband-devel SDL2-devel snappy-devel soxr-devel speex-devel srt-devel srt-libs;
#RUN dnf -y install --skip-unavailable srt-lib srt svt-av1-devel tesseract-devel texi2html texinfo twolame-devel libvmaf-devel wavpack-devel vid.stab-devel vulkan-loader-devel;
#RUN dnf -y install --skip-unavailable libshaderc-devel libshaderc spirv-tools-libs zimg-devel zlib-devel zeromq-devel zvbi-devel vmaf-models pkgconfig libunistring-devel;
#RUN dnf -y install --skip-unavailable unistring-devel libunistring unistring libxslt-devel GeoIP-devel git re2c perl libmaxminddb-devel libmcrypt-dev mcrypt-dev libmcrypt-devel;
#RUN dnf -y install --skip-unavailable mcrypt-devel mcrypt libgeoip-dev debhelper cdbs lintian fakeroot devscripts dh-make dput pbuilder debootstrap apt dpkg libgeoip-devel;
#RUN dnf -y install --skip-unavailable geoip-devel epel-rpm-macros epel-rpm-macros-systemd perl-macros perl-srpm-macros;
RUN chmod +x /root/php7.4rebuild.orig.sh;

ENV TZ Europe/Paris

ENV ROOT_PASSWORD root

EXPOSE 22

ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]
