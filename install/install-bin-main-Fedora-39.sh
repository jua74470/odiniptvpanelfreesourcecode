#!/bin/bash
# sudo apt-get update
# sudo apt-get -y install wget
# sudo yum -y install wget
# sudo wget https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/master/install/install-bin-main-Fedora-39.sh -O /root/install-bin-main-Fedora-39.sh && sudo bash /root/install-bin-main-Fedora-39.sh
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
if [[ "$OS" = "Fedora" && "$VER" = "39" && "$ARCH" == "x86_64" ]] ; then
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
rm -f /etc/init.d/mariadb
mkdir -p /etc/mysql/
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/mysql/my.cnf
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/my.cnf
mkdir -p /etc/init.d/
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/mariadb.init -O /etc/init.d/mariadb
chmod 777 /etc/init.d/mariadb
service mariadb restart
wget -q -O "/tmp/xtreamcodes.tar.xz" "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/main_xtreamcodes_reborn_nobin.tar.xz"
mkdir -p /home/xtreamcodes/
tar -zxvf "/tmp/xtreamcodes.tar.xz" -C "/home/xtreamcodes/"
chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb >/dev/null
rm -rf /home/xtreamcodes/iptv_xtream_codes/admin 2>/dev/null
wget -O /tmp/update.zip "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/update_original.zip" 2>/dev/null
unzip /tmp/update.zip -d /tmp/update/ >/dev/null
cp -rf /tmp/update/XtreamUI-master/* /home/xtreamcodes/iptv_xtream_codes/ >/dev/null
rm -rf /tmp/update/XtreamUI-master >/dev/null
rm /tmp/update.zip >/dev/null
rm -rf /tmp/update >/dev/null
chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/ >/dev/null
chmod +x /home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
/home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
find /home/xtreamcodes/ -type d -not \( -name .update -prune \) -exec chmod -R 777 {} + >/dev/null
cd /home/xtreamcodes
wget https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/phpbuild-php7.2-Fedora-39.tar.xz
tar -xvf phpbuild-php7.2-Fedora-39.tar.xz
rm -f phpbuild-php7.2-Fedora-39.tar.xz
cd /home/xtreamcodes/phpbuild/nginx_nginx-1.24.0
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/sbin/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx/modules"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/nginx/conf"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/logs/"
killall nginx
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
rm -f /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/*
make install
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/balance.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/balance.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-utf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-win https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-win
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.final
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.crt https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.crt
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.csr https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.csr
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.key https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.key
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/win-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/win-utf
cd /home/xtreamcodes/phpbuild/nginx-rtmp_nginx-1.24.0
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/"
mkdir -p "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/modules"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf"
mkdir -p  "/home/xtreamcodes/iptv_xtream_codes/logs/"
killall nginx_rtmp
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx_rtmp
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
killall nginx_rtmp
kill $(ps aux | grep 'xtreamcodes' | grep -v grep | grep -v 'start_services.sh' | awk '{print $2}') 2>/dev/null
rm -f /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/*
#mv objs/nginx objs/nginx_rtmp
#cp objs/nginx_rtmp /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/
make install
mv /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/balance.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/balance.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-utf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-win https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-win
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/nginx.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx_rtmp/conf/nginx.conf
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.crt https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.crt
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.csr https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.csr
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.key https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.key
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params.default
wget -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/win-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/win-utf
cd /home/xtreamcodes/phpbuild/php-7.2.34
make install
#cd /home/xtreamcodes/phpbuild/mcrypt-1.0.5
#/home/xtreamcodes/iptv_xtream_codes/php/bin/phpize
#make install
#cd /home/xtreamcodes/phpbuild/geoip-1.1.1
#make install
#cd /home/xtreamcodes/phpbuild/igbinary-3.2.14
#make install

