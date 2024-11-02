#!/bin/bash
# sudo apt-get update
# sudo apt-get -y install wget
# sudo yum -y install wget
# sudo wget https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/master/install/php7.2rebuild.sh -O /root/php7.2rebuild.sh && sudo bash /root/php7.2rebuild.sh
echo -e "\nChecking that minimal requirements are ok"
# Ensure the OS is compatible with the launcher
if [ -f /etc/almalinux-release ]; then
    OS="Alma Linux"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/almalinux-release)
    VER=${VERFULL:0:1} # return 8
elif [ -f /etc/fedora-release ]; then
    OS="Fedora"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/fedora-release)
    VER=${VERFULL:0:2}
elif [ -f /etc/gentoo-release ]; then
    OS="Gentoo"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/gentoo-release)
    VER=${VERFULL:0:2}
elif [ -f /etc/SuSE-release ]; then
    OS="OpenSUSE"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/SuSE-release)
    VER=${VERFULL:0:3}
elif [ -f /etc/centos-release ]; then
    OS="CentOs"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/centos-release)
    VER=${VERFULL:0:1} # return 8
	if [[ "$VER" = "8" || "$VER" = "9" ]]; then
		OS="CentOS-Stream"
	fi
elif [ -f /etc/lsb-release ]; then
    OS=$(grep DISTRIB_ID /etc/lsb-release | sed 's/^.*=//')
    VER=$(grep DISTRIB_RELEASE /etc/lsb-release | sed 's/^.*=//')
elif [ -f /etc/os-release ]; then
    OS=$(grep -w ID /etc/os-release | sed 's/^.*=//')
    VER=$(grep VERSION_ID /etc/os-release | sed 's/^.*"\(.*\)"/\1/')
 else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

echo "Detected : $OS  $VER  $ARCH"
if [[ "$OS" = "CentOs" && "$VER" = "7" && "$ARCH" == "x86_64" ||
"$OS" = "CentOS-Stream" && "$VER" = "8" && "$ARCH" == "x86_64" ||
"$OS" = "CentOS-Stream" && "$VER" = "9" && "$ARCH" == "x86_64" ||
"$OS" = "Fedora" && ("$VER" = "37" || "$VER" = "38" || "$VER" = "39" || "$VER" = "40" ) && "$ARCH" == "x86_64" ||
"$OS" = "Ubuntu" && ("$VER" = "18.04" || "$VER" = "20.04" || "$VER" = "22.04" ) && "$ARCH" == "x86_64" ||
"$OS" = "debian" && ("$VER" = "10" || "$VER" = "11" ) && "$ARCH" == "x86_64" ]] ; then
echo "Ok."
else
    echo "Sorry, this OS is not supported by Xtream UI."
    exit 1
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "22.04" ]] ; then
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
killall nginx
killall nginx_rtmp
killall php-fpm
killall php-fpm
killall php
killall php
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx
killall nginx_rtmp
killall php-fpm
killall php-fpm
killall php
killall php
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx
killall nginx_rtmp
killall php-fpm
killall php-fpm
killall php
killall php
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx
killall nginx_rtmp
killall php-fpm
killall php-fpm
killall php
killall php
mkdir -p /home/xtreamcodes
chown xtreamcodes:xtreamcodes -R /home/xtreamcodes
chmod -R 0777 /home/xtreamcodes
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/bin/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/include/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/Archive/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/OS/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/PEAR.php
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/System.php
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/build/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/doc/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/pearcmd.php
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/test/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/Console/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/PEAR/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/Structures/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/XML/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/data/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/geoip.so
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/igbinary.so
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/mcrypt.so
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/opcache.a
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/opcache.so
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/lib/php/peclcmd.php
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/php/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/sbin/
rm -rf /home/xtreamcodes/iptv_xtream_codes/php/var/
rm -rf /home/xtreamcodes/phpbuild/
mkdir -p /home/xtreamcodes/phpbuild/
cd /home/xtreamcodes/phpbuild/
rm -rf /home/xtreamcodes/phpbuild/GeoIP-1.6.12.tar.gz /home/xtreamcodes/phpbuild/GeoIP-1.6.12
wget --no-check-certificate https://github.com/maxmind/geoip-api-c/releases/download/v1.6.12/GeoIP-1.6.12.tar.gz -O /home/xtreamcodes/phpbuild/GeoIP-1.6.12.tar.gz
tar -xvf /home/xtreamcodes/phpbuild/GeoIP-1.6.12.tar.gz
cd  /home/xtreamcodes/phpbuild/GeoIP-1.6.12
./configure --prefix=/usr --enable-static --disable-dependency-tracking
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
rm -rf /home/xtreamcodes/phpbuild/libmaxminddb-1.11.0.tar.gz /home/xtreamcodes/phpbuild/libmaxminddb-1.11.0
wget --no-check-certificate https://github.com/maxmind/libmaxminddb/releases/download/1.11.0/libmaxminddb-1.11.0.tar.gz -O /home/xtreamcodes/phpbuild/libmaxminddb-1.11.0.tar.gz
tar -xvf /home/xtreamcodes/phpbuild/libmaxminddb-1.11.0.tar.gz
cd /home/xtreamcodes/phpbuild/libmaxminddb-1.11.0
autoreconf --force --install
./configure --prefix=/usr/ --enable-static
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
rm -rf /home/xtreamcodes/phpbuild/pcre-8.45.tar.bz2 /home/xtreamcodes/phpbuild/pcre-8.45
wget https://sourceforge.net/projects/pcre/files/pcre/8.45/pcre-8.45.tar.bz2 -O /home/xtreamcodes/phpbuild/pcre-8.45.tar.bz2
tar -xvf /home/xtreamcodes/phpbuild/pcre-8.45.tar.bz2
cd /home/xtreamcodes/phpbuild/pcre-8.45
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.21-multilib.patch)
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.32-refused_spelling_terminated.patch)
patch -p2 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.41-fix_stack_estimator.patch)
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.42-Declare-POSIX-regex-function-names-as-macros-to-PCRE.patch)
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.44-Inicialize-name-table-memory-region.patch)
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.44-JIT-compiler-update-for-Intel-CET.patch)
patch -p1 < <(wget -qO- https://src.fedoraproject.org/rpms/pcre/raw/rawhide/f/pcre-8.44-Pass-mshstk-to-the-compiler-when-Intel-CET-is-enable.patch)
libtoolize --copy --force
autoreconf -vif
./configure --prefix=/home/xtreamcodes/iptv_xtream_codes/prefix/ --enable-jit \
    --enable-utf \
    --enable-unicode-properties \
    --enable-pcre8 \
    --enable-pcre16 \
    --enable-pcre32 \
    --disable-silent-rules
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
rm -rf zlib-ng-2.2.2.tar.gz 
wget https://github.com/zlib-ng/zlib-ng/archive/2.2.2/zlib-ng-2.2.2.tar.gz -O /home/xtreamcodes/phpbuild/zlib-ng-2.2.2.tar.gz
tar -xvf /home/xtreamcodes/phpbuild/zlib-ng-2.2.2.tar.gz
cd /home/xtreamcodes/phpbuild/zlib-ng-2.2.2
./configure --prefix=/home/xtreamcodes/iptv_xtream_codes/prefix/
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
rm -rf /home/xtreamcodes/phpbuild/ngx_http_geoip2_module
rm -rf /home/xtreamcodes/phpbuild/nginx-1.24.0
rm -rf /home/xtreamcodes/phpbuild/nginx_nginx-1.24.0
rm -rf /home/xtreamcodes/phpbuild/nginx_nginx-rtmp-1.24.0
rm -rf /home/xtreamcodes/phpbuild/nginx_nginx_rtmp-1.24.0
rm -rf /home/xtreamcodes/phpbuild/openssl-OpenSSL_1_1_1h
wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/openssl-OpenSSL_1_1_1h.tar.gz -O /home/xtreamcodes/phpbuild/OpenSSL_1_1_1h.tar.gz
tar -xzvf /home/xtreamcodes/phpbuild/OpenSSL_1_1_1h.tar.gz
wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/nginx-1.24.0.tar.gz -O /home/xtreamcodes/phpbuild/nginx-1.24.0.tar.gz
tar -xzvf /home/xtreamcodes/phpbuild/nginx-1.24.0.tar.gz
git clone https://github.com/leev/ngx_http_geoip2_module.git /home/xtreamcodes/phpbuild/ngx_http_geoip2_module
rm -rf /home/xtreamcodes/phpbuild/v1.2.2.zip
rm -rf /home/xtreamcodes/phpbuild/nginx-rtmp-module-1.2.2
wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/nginx-rtmp-module-1.2.2.zip -O /home/xtreamcodes/phpbuild/v1.2.2.zip
unzip /home/xtreamcodes/phpbuild/v1.2.2.zip
wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/nginx_1.24.0-2ubuntu1.debian.tar.xz -O /home/xtreamcodes/phpbuild/nginx_1.24.0-2ubuntu1.debian.tar.xz
tar -xvf /home/xtreamcodes/phpbuild/nginx_1.24.0-2ubuntu1.debian.tar.xz
cd /home/xtreamcodes/phpbuild/
mv nginx-1.24.0 nginx_nginx-1.24.0
cd /home/xtreamcodes/phpbuild/nginx_nginx-1.24.0
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/0003-define_gnu_source-on-other-glibc-based-platforms.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/nginx-fix-pidfile.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/nginx-ssl_cert_cb_yield.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/CVE-2023-44487.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/ubuntu-branding.patch
rm -rf /home/xtreamcodes/phpbuild/debian/
#if [ -f "/usr/bin/dpkg-buildflags" ]; then
#    configureend="--with-openssl=/home/xtreamcodes/phpbuild/openssl-OpenSSL_1_1_1h --with-ld-opt='$(dpkg-buildflags --get LDFLAGS)' --with-cc-opt='$(dpkg-buildflags --get CFLAGS)'"
#elif [ -f "/usr/bin/rpm" ]; then
#    configureend="--with-openssl=/home/xtreamcodes/phpbuild/openssl-OpenSSL_1_1_1h --with-cc-opt='$(rpm --eval %{build_ldflags})' --with-cc-opt='$(rpm --eval %{optflags})'"
#else
    configureend="--with-openssl=/home/xtreamcodes/phpbuild/openssl-OpenSSL_1_1_1h --with-cc-opt='-static -static-libgcc -g -O2 -Wformat -Wall' -' --with-ld-opt='-static -static-libgcc -g -O2 -Wformat -Wall' --with-pcre=/home/xtreamcodes/iptv_xtream_codes/prefix/ --with-zlib=/home/xtreamcodes/iptv_xtream_codes/prefix/"
#fi
echo "/home/xtreamcodes/iptv_xtream_codes/prefix/lib" > /etc/ld.so.conf.d/xtreamcodes.conf
ldconfig
./configure --prefix=/home/xtreamcodes/iptv_xtream_codes/nginx \
--lock-path=/home/xtreamcodes/iptv_xtream_codes/tmp/nginx.lock \
--conf-path=/home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf \
--error-log-path=/home/xtreamcodes/iptv_xtream_codes/logs/error.log \
--http-log-path=/home/xtreamcodes/iptv_xtream_codes/logs/access.log \
--pid-path=/home/xtreamcodes/iptv_xtream_codes/nginx.pid \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_addition_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_v2_module \
--with-pcre \
--with-http_random_index_module \
--with-http_secure_link_module \
--with-http_stub_status_module \
--with-http_auth_request_module \
--with-threads \
--with-mail \
--with-mail_ssl_module \
--with-file-aio \
--with-cpu-opt=generic \
--add-module=/home/xtreamcodes/phpbuild/ngx_http_geoip2_module \
$configureend
make -j$(nproc --all)
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/sbin/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/modules"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/nginx/conf"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/logs/"
rm -f /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/*
make install
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/balance.conf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/balance.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/fastcgi.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/fastcgi.conf.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/fastcgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/fastcgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-utf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/koi-utf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-win https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/koi-win
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/mime.types
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/mime.types.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/nginx.conf.final
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/nginx.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/scgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/scgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.crt https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/server.crt
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.csr https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/server.csr
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.key https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/server.key
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/uwsgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/uwsgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/win-utf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/nginx/conf/win-utf
cd /home/xtreamcodes/phpbuild/
rm -rf /home/xtreamcodes/phpbuild/ngx_http_geoip2_module
rm -rf /home/xtreamcodes/phpbuild/nginx_rtmp-1.24.0
rm -rf /home/xtreamcodes/phpbuild/openssl-OpenSSL_1_1_1h
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/openssl-OpenSSL_1_1_1h.tar.gz -O /home/xtreamcodes/phpbuild/OpenSSL_1_1_1h.tar.gz
tar -xzvf OpenSSL_1_1_1h.tar.gz
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/nginx-1.24.0.tar.gz -O /home/xtreamcodes/phpbuild/nginx-1.24.0.tar.gz
tar -xzvf /home/xtreamcodes/phpbuild/nginx-1.24.0.tar.gz
mkdir -p /home/xtreamcodes/phpbuild/nginx_rtmp-1.24.0
tar -xzvf nginx-1.24.0.tar.gz -C "/home/xtreamcodes/phpbuild/nginx_rtmp-1.24.0"
git clone https://github.com/leev/ngx_http_geoip2_module.git /home/xtreamcodes/phpbuild/ngx_http_geoip2_module
rm -rf /home/xtreamcodes/phpbuild/v1.2.2.zip
rm -rf /home/xtreamcodes/phpbuild/nginx-rtmp-module-1.2.2
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/nginx-rtmp-module-1.2.2.zip -O /home/xtreamcodes/phpbuild/v1.2.2.zip
unzip /home/xtreamcodes/phpbuild/v1.2.2.zip
wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/nginx/1.24.0-2ubuntu1/nginx_1.24.0-2ubuntu1.debian.tar.xz -O /home/xtreamcodes/phpbuild/nginx_1.24.0-2ubuntu1.debian.tar.xz
tar -xvf /home/xtreamcodes/phpbuild/nginx_1.24.0-2ubuntu1.debian.tar.xz
cd /home/xtreamcodes/phpbuild/
mv nginx-1.24.0 nginx-rtmp_nginx-1.24.0
cd /home/xtreamcodes/phpbuild/nginx-rtmp_nginx-1.24.0
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/0003-define_gnu_source-on-other-glibc-based-platforms.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/nginx-fix-pidfile.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/nginx-ssl_cert_cb_yield.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/CVE-2023-44487.patch
patch -p1 < /home/xtreamcodes/phpbuild/debian/patches/ubuntu-branding.patch
rm -rf /home/xtreamcodes/phpbuild/debian/
./configure --prefix=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp \
--lock-path=/home/xtreamcodes/iptv_xtream_codes/tmp/nginx_rtmp.lock \
--http-client-body-temp-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/client_body_temp \
--http-fastcgi-temp-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/fastcgi_temp \
--http-proxy-temp-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/proxy_temp \
--http-scgi-temp-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/scgi_temp \
--http-uwsgi-temp-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/uwsgi_temp \
--conf-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/nginx.conf \
--error-log-path=/home/xtreamcodes/iptv_xtream_codes/logs/rtmp_error.log \
--http-log-path=/home/xtreamcodes/iptv_xtream_codes/logs/rtmp_access.log \
--pid-path=/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp.pid \
--add-module=/home/xtreamcodes/phpbuild/nginx-rtmp-module-1.2.2 \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_addition_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_v2_module \
--with-pcre \
--with-http_random_index_module \
--with-http_secure_link_module \
--with-http_stub_status_module \
--with-http_auth_request_module \
--with-threads \
--with-mail \
--with-mail_ssl_module \
--with-file-aio \
--with-cpu-opt=generic \
--without-http_rewrite_module \
--add-module=/home/xtreamcodes/phpbuild/ngx_http_geoip2_module \
"$configureend"
make -j$(nproc --all)
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/modules"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/logs/"
rm -f /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/*
make install
mv /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/fastcgi.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/fastcgi.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/fastcgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/fastcgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-utf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/koi-utf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-win https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/koi-win
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/mime.types
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/mime.types.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/nginx.conf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/nginx.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/nginx.conf.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/nginx.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/scgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/scgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/uwsgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params.default https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/uwsgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/win-utf https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/nginx_rtmp/conf/win-utf
cd  /home/xtreamcodes/phpbuild/
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/php7.2_7.2.34-43+ubuntu20.04.1+deb.sury.org+1.debian.tar.xz
tar -xvf php7.2_7.2.34-43+ubuntu20.04.1+deb.sury.org+1.debian.tar.xz
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/php-7.2.34.tar.xz -O /home/xtreamcodes/phpbuild/php-7.2.34.tar.xz
tar -xvf /home/xtreamcodes/phpbuild/php-7.2.34.tar.xz
cd /home/xtreamcodes/phpbuild/php-7.2.34
#add Remi Colet Security Patch
# Build fixes
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.1.7-httpd.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.1.33-intl.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.0-includedir.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-5.6.3-embed.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-5.3.0-recode.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.0-libdb.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.0.7-curl.patch)
# backported from 8.0
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-net-snmp.patch)
# Functional changes
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.4-dlopen.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.16-systzdata-v17.patch)
# See http://bugs.php.net/53436
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.12-phpize.patch)
# Use -lldap_r for OpenLDAP
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.3-ldap_r.patch)
# Make php_config.h constant across builds (from 7.4)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.32-fixheader.patch)
# drop "Configure command" from phpinfo output
# and add build system and provider (from 8.0)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.32-phpinfo.patch)
# getallheaders for FPM backported from 7.3
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.8-getallheaders.patch)
# backport PDOStatement::getColumnMeta from 7.4
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.16-pdooci.patch)
# RC Patch
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.2.0-oci8conf.patch)
# Security fixes (200+)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug77423.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug80672.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug80710.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81122.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug76450.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81211.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81026.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug79971.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81719.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81720.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81727.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81726.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81738.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81740.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81744.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-bug81746.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2023-0662.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2023-3247.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2023-3823.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2023-3824.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-2756.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-3096.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-5458.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-8925.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-8926.patch)
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-cve-2024-8927.patch)
# Fixes for tests (300+)
# Factory is droped from system tzdata
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.0.10-datetests.patch)
if ! pkg-config libpcre --atleast-version 8.34 ; then
# Only apply when system libpcre < 8.34
patch -p1 < <(wget -qO- https://git.remirepo.net/cgit/rpms/scl-php72/php.git/plain/php-7.0.0-oldpcre.patch)
fi
#patch -p1 < ../debian/patches/0087-Add-minimal-OpenSSL-3.0-patch.patch
export PATH="/usr/bin:/usr/sbin:/home/xtreamcodes/iptv_xtream_codes/prefix/bin:/home/xtreamcodes/iptv_xtream_codes/prefix/sbin"
export LD_LIBRARY_PATH="/home/xtreamcodes/iptv_xtream_codes/prefix/lib:$LD_LIBRARY_PATH"
./configure --prefix=/home/xtreamcodes/iptv_xtream_codes/php \
--with-zlib-dir --with-freetype-dir=/usr --enable-mbstring --enable-calendar \
--with-curl --with-gd --disable-rpath --enable-inline-optimization \
--with-bz2 --with-zlib --enable-sockets --enable-sysvsem --enable-sysvshm \
--enable-pcntl --enable-mbregex --enable-exif --enable-bcmath --with-mhash \
--enable-zip --with-pcre-regex --with-pdo-mysql=mysqlnd \
--with-mysqli=mysqlnd --with-openssl \
--with-fpm-user=xtreamcodes --with-fpm-group=xtreamcodes \
--with-libdir=/lib/x86_64-linux-gnu --with-gettext --with-xmlrpc \
--with-webp-dir=/usr --with-jpeg-dir=/usr \
--with-xsl --enable-opcache --enable-fpm --enable-libxml --enable-static --disable-shared
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild
wget --no-check-certificate -O /home/xtreamcodes/phpbuild/mcrypt-1.0.5.tgz https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/mcrypt-1.0.5.tgz
tar -xvf /home/xtreamcodes/phpbuild/mcrypt-1.0.5.tgz
cd /home/xtreamcodes/phpbuild/mcrypt-1.0.5
/home/xtreamcodes/iptv_xtream_codes/php/bin/phpize
./configure --with-php-config=/home/xtreamcodes/iptv_xtream_codes/php/bin/php-config
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
wget --no-check-certificate -O /home/xtreamcodes/phpbuild/geoip-1.1.1.tgz https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/geoip-1.1.1.tgz
tar -xvf /home/xtreamcodes/phpbuild/geoip-1.1.1.tgz
cd /home/xtreamcodes/phpbuild/geoip-1.1.1
/home/xtreamcodes/iptv_xtream_codes/php/bin/phpize
./configure --with-php-config=/home/xtreamcodes/iptv_xtream_codes/php/bin/php-config
make -j$(nproc --all)
make install
cd /home/xtreamcodes/phpbuild/
wget --no-check-certificate -O /home/xtreamcodes/phpbuild/igbinary-3.2.14.tgz https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/igbinary-3.2.14.tgz
tar -xvf /home/xtreamcodes/phpbuild/igbinary-3.2.14.tgz
cd /home/xtreamcodes/phpbuild/igbinary-3.2.14
/home/xtreamcodes/iptv_xtream_codes/php/bin/phpize
./configure --with-php-config=/home/xtreamcodes/iptv_xtream_codes/php/bin/php-config
make -j$(nproc --all)
make install
cd /home/xtreamcodes/
rm -rf /home/xtreamcodes/phpbuild/debian
rm -rf /home/xtreamcodes/phpbuild/nginx-1.24.0.tar.gz
rm -rf /home/xtreamcodes/phpbuild/nginx_1.24.0-2ubuntu1.debian.tar.xz
rm -rf /home/xtreamcodes/phpbuild/OpenSSL_1_1_1h.tar.gz
rm -rf /home/xtreamcodes/phpbuild/php-7.2.34.tar.xz
rm -rf /home/xtreamcodes/phpbuild/php7.2_7.2.34-43+ubuntu20.04.1+deb.sury.org+1.debian.tar.xz
rm -rf /home/xtreamcodes/phpbuild/v1.2.2.zip
rm -rf /home/xtreamcodes/phpbuild/mcrypt-1.0.5.tgz
rm -rf /home/xtreamcodes/phpbuild/geoip-1.1.1.tgz
rm -rf /home/xtreamcodes/phpbuild/igbinary-3.2.14.tgz
tar -cvf phpbuild-php7.2-$OS-$VER.tar phpbuild
echo "compress xz"
xz phpbuild-php7.2-$OS-$VER.tar
