FROM fedora:39
MAINTAINER "jua74470"

RUN mkdir /var/run/sshd;
RUN dnf --setopt=metadata_expire=never install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-39.noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-39.noarch.rpm;
RUN dnf --setopt=metadata_expire=never install -y https://rpms.remirepo.net/fedora/remi-release-39.rpm;
RUN dnf clean all;
RUN dnf -y update
RUN dnf --setopt=metadata_expire=never install -y openssh-server @core tzdata sudo vim make zip unzip chkconfig bash-completion wget bzip2-libs curl curl-devel libcurl-devel perl-libwww-perl;
RUN dnf --setopt=metadata_expire=never install -y libxml2 libxml2-devel;
RUN dnf --setopt=metadata_expire=never install -y bzip2-devel;
RUN dnf --setopt=metadata_expire=never install -y gcc;
RUN dnf --setopt=metadata_expire=never install -y gcc-c++;
RUN dnf --setopt=metadata_expire=never install -y at make;
RUN dnf --setopt=metadata_expire=never install -y ca-certificates;
RUN dnf --setopt=metadata_expire=never install -y nano;
RUN dnf --setopt=metadata_expire=never install -y psmisc;
RUN dnf --setopt=metadata_expire=never install -y daemonize;
RUN dnf --setopt=metadata_expire=never install -y at;
RUN dnf --setopt=metadata_expire=never install -y bash-completion;
RUN dnf --setopt=metadata_expire=never install -y jq;
RUN dnf --setopt=metadata_expire=never install -y sshpass;
RUN dnf --setopt=metadata_expire=never install -y net-tools;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-devel;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-libs;
RUN dnf --setopt=metadata_expire=never install -y e2fsprogs-static;
RUN dnf --setopt=metadata_expire=never install -y libcurl-devel;
RUN dnf --setopt=metadata_expire=never install -y libxslt-devel;
RUN dnf --setopt=metadata_expire=never install -y GeoIP-devel;
RUN dnf --setopt=metadata_expire=never install -y wget;
RUN dnf --setopt=metadata_expire=never install -y htop;
RUN dnf --setopt=metadata_expire=never install -y unzip;
RUN dnf --setopt=metadata_expire=never install -y httpd;
RUN dnf --setopt=metadata_expire=never install -y httpd-devel;
RUN dnf --setopt=metadata_expire=never install -y zip;
RUN dnf --setopt=metadata_expire=never install -y mc;
RUN dnf --setopt=metadata_expire=never install -y libpng-devel;
RUN dnf --setopt=metadata_expire=never install -y mcrypt;
RUN dnf --setopt=metadata_expire=never install -y libmcrypt-devel;
RUN dnf --setopt=metadata_expire=never install -y libX11-devel;
RUN dnf --setopt=metadata_expire=never install -y X11-devel;
RUN dnf --setopt=metadata_expire=never install -y libpng-devel;
RUN dnf --setopt=metadata_expire=never install -y zlib-devel;
RUN dnf --setopt=metadata_expire=never install -y bzip2-devel;
RUN dnf --setopt=metadata_expire=never install -y libxml2-devel;
RUN dnf --setopt=metadata_expire=never install -y libpng-devel;
RUN dnf --setopt=metadata_expire=never install -y bzip2-devel;
RUN dnf --setopt=metadata_expire=never install -y gnupg2;
RUN dnf --setopt=metadata_expire=never install -y gnupg;
RUN dnf --setopt=metadata_expire=never install -y bzip2-devel;
RUN dnf --setopt=metadata_expire=never install -y pam-devel;
RUN dnf --setopt=metadata_expire=never install -y pam;
RUN dnf --setopt=metadata_expire=never install -y nginx;
RUN dnf --setopt=metadata_expire=never install -y nginx-devel;
RUN dnf --setopt=metadata_expire=never install -y libstdc++-devel;
RUN dnf --setopt=metadata_expire=never install -y openssl-devel;
RUN dnf --setopt=metadata_expire=never install -y sqlite-devel;
RUN dnf --setopt=metadata_expire=never install -y zlib-devel;
RUN dnf --setopt=metadata_expire=never install -y smtpdaemon;
RUN dnf --setopt=metadata_expire=never install -y libedit-devel;
RUN dnf --setopt=metadata_expire=never install -y pcre-devel;
RUN dnf --setopt=metadata_expire=never install -y pcre2-devel;
RUN dnf --setopt=metadata_expire=never install -y pcre3-devel;
RUN dnf --setopt=metadata_expire=never install -y libxcrypt-devel;
RUN dnf --setopt=metadata_expire=never install -y xcrypt-devel;
RUN dnf --setopt=metadata_expire=never install -y perl-interpreter;
RUN dnf --setopt=metadata_expire=never install -y autoconf;
RUN dnf --setopt=metadata_expire=never install -y automake;
RUN dnf --setopt=metadata_expire=never install -y make;
RUN dnf --setopt=metadata_expire=never install -y gcc;
RUN dnf --setopt=metadata_expire=never install -y gcc-c++;
RUN dnf --setopt=metadata_expire=never install -y libtool;
RUN dnf --setopt=metadata_expire=never install -y libtool-ltdl-devel;
RUN dnf --setopt=metadata_expire=never install -y systemtap-sdt-devel;
RUN dnf --setopt=metadata_expire=never install -y tzdata;
RUN dnf --setopt=metadata_expire=never install -y procps;
RUN dnf --setopt=metadata_expire=never install -y procps-ng;
RUN dnf --setopt=metadata_expire=never install -y libacl-devel systemd-devel krb5-devel libc-client-devel cyrus-sasl-devel openldap-devel libpq-devel unixODBC-devel;
RUN dnf -y install --skip-unavailable firebird-devel net-snmp-devel oniguruma-devel gd-devel gmp-devel libdb-devel tokyocabinet-devel lmdb-devel qdbm-devel libtidy-devel;
RUN dnf -y install --skip-unavailable freetds-devel aspell-devel libicu-devel enchant-devel libenchant-devel libsodium-devel sodium-devel libffi-devel ffi-devel libxslt-devel;
RUN dnf -y install --skip-unavailable xslt-devel yasm nasm gnutls-devel ass-devel librtmp-devel librtmp rtmp-devel rtmp rtmpdump alsa-lib-devel AMF-devel flite-devel fontconfig-devel;
RUN dnf -y install --skip-unavailable freetype-devel fribidi-devel frei0r-devel game-music-emu-devel gsm-devel ilbc-devel jack-audio-connection-kit-devel ladspa-devel libaom-devel;
RUN dnf -y install --skip-unavailable libdav1d-devel libass-devel libbluray-devel libbs2b-devel libcaca-devel libcdio-paranoia-devel libchromaprint-devel libcrystalhd-devel;
RUN dnf -y install --skip-unavailable lensfun-devel libavc1394-devel libdc1394-devel libiec61883-devel libdrm-devel libgcrypt-devel libGL-devel libmodplug-devel libmysofa-devel;
RUN dnf -y install --skip-unavailable libopenmpt-devel librsvg2-devel libsmbclient-devel libssh-devel libtheora-devel libv4l-devel libva-devel libvdpau-devel vapoursynth-devel;
RUN dnf -y install --skip-unavailable libvpx-devel libmfx mfx libmfx-devel mfx-devel nasm libwebp-devel netcdf-devel raspberrypi-vc-devel nv-codec-headers opencore-amr-devel;
RUN dnf -y install --skip-unavailable vo-amrwbenc-devel libomxil-bellagio-devel libxcb-devel libxml2-devel lilv-devel lv2-devel openal-soft-devel opencl-headers ocl-icd-devel;
RUN dnf -y install --skip-unavailable openjpeg2-devel pulseaudio-libs-devel podman rav1e-devel rubberband-devel SDL2-devel snappy-devel soxr-devel speex-devel srt-devel srt-libs;
RUN dnf -y install --skip-unavailable srt-lib srt svt-av1-devel tesseract-devel texi2html texinfo twolame-devel libvmaf-devel wavpack-devel vid.stab-devel vulkan-loader-devel;
RUN dnf -y install --skip-unavailable libshaderc-devel libshaderc spirv-tools-libs zimg-devel zlib-devel zeromq-devel zvbi-devel vmaf-models pkgconfig libunistring-devel;
RUN dnf -y install --skip-unavailable unistring-devel libunistring unistring libxslt-devel GeoIP-devel git re2c perl libmaxminddb-devel libmcrypt-dev mcrypt-dev libmcrypt-devel;
RUN dnf -y install --skip-unavailable mcrypt-devel mcrypt libgeoip-dev debhelper cdbs lintian fakeroot devscripts dh-make dput pbuilder debootstrap apt dpkg libgeoip-devel;
RUN dnf -y install --skip-unavailable geoip-devel epel-rpm-macros epel-rpm-macros-systemd perl-macros perl-srpm-macros;
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
