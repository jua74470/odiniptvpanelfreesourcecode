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
RUN dnf --setopt=metadata_expire=never install -y libacl-devel;
RUN dnf --setopt=metadata_expire=never install -y systemd-devel;
RUN dnf --setopt=metadata_expire=never install -y krb5-devel;
RUN dnf --setopt=metadata_expire=never install -y libc-client-devel;
RUN dnf --setopt=metadata_expire=never install -y cyrus-sasl-devel;
RUN dnf --setopt=metadata_expire=never install -y openldap-devel;
RUN dnf --setopt=metadata_expire=never install -y libpq-devel;
RUN dnf --setopt=metadata_expire=never install -y unixODBC-devel;
RUN dnf --setopt=metadata_expire=never install -y firebird-devel;
RUN dnf --setopt=metadata_expire=never install -y net-snmp-devel;
RUN dnf --setopt=metadata_expire=never install -y oniguruma-devel;
RUN dnf --setopt=metadata_expire=never install -y gd-devel gmp-devel;
RUN dnf --setopt=metadata_expire=never install -y libdb-devel;
RUN dnf --setopt=metadata_expire=never install -y tokyocabinet-devel;
RUN dnf --setopt=metadata_expire=never install -y lmdb-devel;
RUN dnf --setopt=metadata_expire=never install -y qdbm-devel;
RUN dnf --setopt=metadata_expire=never install -y libtidy-devel;
RUN dnf --setopt=metadata_expire=never install -y freetds-devel;
RUN dnf --setopt=metadata_expire=never install -y aspell-devel;
RUN dnf --setopt=metadata_expire=never install -y libicu-devel;
RUN dnf --setopt=metadata_expire=never install -y enchant-devel;
RUN dnf --setopt=metadata_expire=never install -y libenchant-devel;
RUN dnf --setopt=metadata_expire=never install -y libsodium-devel;
RUN dnf --setopt=metadata_expire=never install -y sodium-devel;
RUN dnf --setopt=metadata_expire=never install -y libffi-devel;
RUN dnf --setopt=metadata_expire=never install -y ffi-devel;
RUN dnf --setopt=metadata_expire=never install -y libxslt-devel;
RUN dnf --setopt=metadata_expire=never install -y xslt-devel;
RUN dnf --setopt=metadata_expire=never install -y yasm;
RUN dnf --setopt=metadata_expire=never install -y nasm;
RUN dnf --setopt=metadata_expire=never install -y gnutls-devel;
RUN dnf --setopt=metadata_expire=never install -y ass-devel;
RUN dnf --setopt=metadata_expire=never install -y librtmp-devel;
RUN dnf --setopt=metadata_expire=never install -y librtmp;
RUN dnf --setopt=metadata_expire=never install -y rtmp-devel;
RUN dnf --setopt=metadata_expire=never install -y rtmp;
RUN dnf --setopt=metadata_expire=never install -y rtmpdump;
RUN dnf --setopt=metadata_expire=never install -y alsa-lib-devel;
RUN dnf --setopt=metadata_expire=never install -y AMF-devel;
RUN dnf --setopt=metadata_expire=never install -y flite-devel;
RUN dnf --setopt=metadata_expire=never install -y fontconfig-devel;
RUN dnf --setopt=metadata_expire=never install -y freetype-devel;
RUN dnf --setopt=metadata_expire=never install -y fribidi-devel;
RUN dnf --setopt=metadata_expire=never install -y frei0r-devel;
RUN dnf --setopt=metadata_expire=never install -y game-music-emu-devel;
RUN dnf --setopt=metadata_expire=never install -y gsm-devel;
RUN dnf --setopt=metadata_expire=never install -y ilbc-devel;
RUN dnf --setopt=metadata_expire=never install -y jack-audio-connection-kit-devel;
RUN dnf --setopt=metadata_expire=never install -y ladspa-devel;
RUN dnf --setopt=metadata_expire=never install -y libaom-devel;
RUN dnf --setopt=metadata_expire=never install -y libdav1d-devel;
RUN dnf --setopt=metadata_expire=never install -y libass-devel;
RUN dnf --setopt=metadata_expire=never install -y libbluray-devel;
RUN dnf --setopt=metadata_expire=never install -y libbs2b-devel;
RUN dnf --setopt=metadata_expire=never install -y libcaca-devel;
RUN dnf --setopt=metadata_expire=never install -y libcdio-paranoia-devel;
RUN dnf --setopt=metadata_expire=never install -y libchromaprint-devel;
RUN dnf --setopt=metadata_expire=never install -y libcrystalhd-devel;
RUN dnf --setopt=metadata_expire=never install -y lensfun-devel;
RUN dnf --setopt=metadata_expire=never install -y libavc1394-devel;
RUN dnf --setopt=metadata_expire=never install -y libdc1394-devel;
RUN dnf --setopt=metadata_expire=never install -y libiec61883-devel;
RUN dnf --setopt=metadata_expire=never install -y libdrm-devel;
RUN dnf --setopt=metadata_expire=never install -y libgcrypt-devel;
RUN dnf --setopt=metadata_expire=never install -y libGL-devel;
RUN dnf --setopt=metadata_expire=never install -y libmodplug-devel;
RUN dnf --setopt=metadata_expire=never install -y libmysofa-devel;
RUN dnf --setopt=metadata_expire=never install -y libopenmpt-devel;
RUN dnf --setopt=metadata_expire=never install -y librsvg2-devel;
RUN dnf --setopt=metadata_expire=never install -y libsmbclient-devel;
RUN dnf --setopt=metadata_expire=never install -y libssh-devel;
RUN dnf --setopt=metadata_expire=never install -y libtheora-devel;
RUN dnf --setopt=metadata_expire=never install -y libv4l-devel;
RUN dnf --setopt=metadata_expire=never install -y libva-devel;
RUN dnf --setopt=metadata_expire=never install -y libvdpau-devel;
RUN dnf --setopt=metadata_expire=never install -y vapoursynth-devel;
RUN dnf --setopt=metadata_expire=never install -y libvpx-devel libmfx mfx libmfx-devel mfx-devel nasm libwebp-devel netcdf-devel raspberrypi-vc-devel nv-codec-headers opencore-amr-devel;
RUN dnf --setopt=metadata_expire=never install -y vo-amrwbenc-devel libomxil-bellagio-devel libxcb-devel libxml2-devel lilv-devel lv2-devel openal-soft-devel opencl-headers ocl-icd-devel;
RUN dnf --setopt=metadata_expire=never install -y openjpeg2-devel pulseaudio-libs-devel podman rav1e-devel rubberband-devel SDL2-devel snappy-devel soxr-devel speex-devel srt-devel srt-libs;
RUN dnf --setopt=metadata_expire=never install -y srt-lib srt svt-av1-devel tesseract-devel texi2html texinfo twolame-devel libvmaf-devel wavpack-devel vid.stab-devel vulkan-loader-devel;
RUN dnf --setopt=metadata_expire=never install -y libshaderc-devel libshaderc spirv-tools-libs zimg-devel zlib-devel zeromq-devel zvbi-devel vmaf-models pkgconfig libunistring-devel;
RUN dnf --setopt=metadata_expire=never install -y unistring-devel libunistring unistring libxslt-devel GeoIP-devel git re2c perl libmaxminddb-devel libmcrypt-dev mcrypt-dev libmcrypt-devel;
RUN dnf --setopt=metadata_expire=never install -y mcrypt-devel mcrypt libgeoip-dev debhelper cdbs lintian fakeroot devscripts dh-make dput pbuilder debootstrap apt dpkg libgeoip-devel;
RUN dnf --setopt=metadata_expire=never install -y geoip-devel epel-rpm-macros epel-rpm-macros-systemd perl-macros perl-srpm-macros;
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
