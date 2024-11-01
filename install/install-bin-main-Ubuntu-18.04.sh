#!/bin/bash
# sudo apt-get update
# sudo apt-get -y install wget
# sudo yum -y install wget
# sudo wget https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/master/install/install-bin-main-Ubuntu-18.04.sh -O /root/install-bin-main-Ubuntu-18.04.sh && sudo bash /root/install-bin-main-Ubuntu-18.04.sh
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
if [[ "$OS" = "Ubuntu" && "$VER" = "18.04" && "$ARCH" == "x86_64" ]] ; then
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
DEBIAN_FRONTEND=noninteractive apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
DEBIAN_FRONTEND=noninteractive apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
DEBIAN_FRONTEND=noninteractive add-apt-repository -y 'deb [arch=amd64,arm64,ppc64el] http://ams2.mirrors.digitalocean.com/mariadb/repo/10.6/ubuntu bionic main'
DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:maxmind/ppa
DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:andykimpe/curl
DEBIAN_FRONTEND=noninteractive apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install ubuntu-minimal
DEBIAN_FRONTEND=noninteractive apt-get -y install ssh
DEBIAN_FRONTEND=noninteractive apt-get -y install libwebp6
DEBIAN_FRONTEND=noninteractive apt-get -y install sudo
DEBIAN_FRONTEND=noninteractive apt-get -y install libjpeg62
DEBIAN_FRONTEND=noninteractive apt-get -y install libcurl4
DEBIAN_FRONTEND=noninteractive apt-get -y install libxslt1-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install libgeoip-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install e2fsprogs
DEBIAN_FRONTEND=noninteractive apt-get -y install wget
DEBIAN_FRONTEND=noninteractive apt-get -y install mcrypt
DEBIAN_FRONTEND=noninteractive apt-get -y install nscd
DEBIAN_FRONTEND=noninteractive apt-get -y install htop
DEBIAN_FRONTEND=noninteractive apt-get -y install zip
DEBIAN_FRONTEND=noninteractive apt-get -y install unzip
DEBIAN_FRONTEND=noninteractive apt-get -y install mc
DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server
wget http://security.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb -O /tmp/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
DEBIAN_FRONTEND=noninteractive  dpkg -i /tmp/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
DEBIAN_FRONTEND=noninteractive  apt-get -yf install
DEBIAN_FRONTEND=noninteractive  dpkg -i /tmp/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
rm -f /tmp/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
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
wget -q -O "/tmp/xtreamcodes.tar.xz" "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/main_xtreamcodes_reborn_original.tar.gz"
mkdir -p /home/xtreamcodes/
tar -xvf "/tmp/xtreamcodes.tar.xz" -C "/home/xtreamcodes/"
chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb >/dev/null
rm -rf /home/xtreamcodes/iptv_xtream_codes/admin 2>/dev/null
wget -O /tmp/update.zip "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/update_original.zip" 2>/dev/null
unzip /tmp/update.zip -d /tmp/update/ >/dev/null
cp -rf /tmp/update/XtreamUI-master/* /home/xtreamcodes/iptv_xtream_codes/ >/dev/null
rm -rf /tmp/update/XtreamUI-master >/dev/null
rm /tmp/update.zip >/dev/null
rm -rf /tmp/update >/dev/null
wget "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.final" -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
wget "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/wwwdir/darkino.php" -O /home/xtreamcodes/iptv_xtream_codes/wwwdir/darkino.php
chattr +i /home/xtreamcodes/iptv_xtream_codes/wwwdir/darkino.php
wget "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/admin/episode.php" -O /home/xtreamcodes/iptv_xtream_codes/admin/episode.php
chattr +i /home/xtreamcodes/iptv_xtream_codes/admin/episode.php
wget "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/admin/movie.php" -O /home/xtreamcodes/iptv_xtream_codes/admin/movie.php
chattr +i /home/xtreamcodes/iptv_xtream_codes/admin/movie.php
chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/ >/dev/null
chmod +x /home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
/home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
find /home/xtreamcodes/ -type d -not \( -name .update -prune \) -exec chmod -R 777 {} + >/dev/null
