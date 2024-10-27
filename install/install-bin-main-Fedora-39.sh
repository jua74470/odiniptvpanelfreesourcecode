#!/bin/bash
#
#
#if (test -f "/usr/bin/wget");then wget -O /root/install-bin-main.sh https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/install/install-bin-main-Fedora-39.sh;fi; if (test -f "/usr/bin/curl");then curl -L --output /root/install-bin-main.sh https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/install/install-bin-main-Fedora-39.sh;fi; bash /root/install-bin-main.sh
#
#
PACKAGE_INSTALLER="dnf -y install"
PACKAGE_REMOVER="dnf -y remove"
PACKAGE_UPDATER="dnf -y update"
PACKAGE_UTILS="dnf-utils" 
PACKAGE_GROUPINSTALL="dnf -y groupinstall"
PACKAGE_SOURCEDOWNLOAD="dnf download --source"
BUILDDEP="dnf build-dep -y"
MYSQLCNF=/etc/my.cnf
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
cat > /etc/yum.repos.d/mariadb.repo <<EOF
[mariadb]
name=MariaDB RPM source
baseurl=http://mirror.mariadb.org/yum/10.6/fedora/$VER/x86_64/
enabled=1
gpgcheck=0
EOF
enablerepo() {
	dnf config-manager --set-enabled $1
}
enablerepo fedora-cisco-openh264
enablerepo fedora
enablerepo updates
enablerepo mariadb
enablerepo rpmfusion-free
enablerepo rpmfusion-free-updates
enablerepo rpmfusion-nonfree
enablerepo rpmfusion-nonfree-updates
enablerepo remi
	yumpurge() {
	for package in $@
	do
		echo "removing config files for $package"
		for file in $(rpm -q --configfiles $package)
		do
			echo "  removing $file"
			rm -f $file
		done
		rpm -e $package
	done
	}
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
setenforce 0
systemctl  stop sendmail.service
systemctl  disabble sendmail.service
FIREWALL_SERVICE="firewalld"
systemctl  save "$FIREWALL_SERVICE".service
systemctl  stop "$FIREWALL_SERVICE".service
systemctl  disable "$FIREWALL_SERVICE".service
FIREWALL_SERVICE="iptables"
systemctl  save "$FIREWALL_SERVICE".service
systemctl  stop "$FIREWALL_SERVICE".service
systemctl  disable "$FIREWALL_SERVICE".service
yumpurge bind-chroot
yumpurge qpid-cpp-client
$PACKAGE_INSTALLER yum-plugin-copr
$PACKAGE_INSTALLER yum-plugins-copr
$PACKAGE_INSTALLER dnf-plugin-core
$PACKAGE_INSTALLER dnf-plugins-core
$PACKAGE_INSTALLER dnf-plugin-copr
$PACKAGE_INSTALLER dnf-plugins-copr
$PACKAGE_INSTALLER sudo vim make zip unzip chkconfig bash-completion wget
$PACKAGE_INSTALLER glibc32 bzip2-libs 
$PACKAGE_INSTALLER sudo curl curl-devel perl-libwww-perl libxml2 libxml2-devel zip bzip2-devel gcc gcc-c++ at make
$PACKAGE_INSTALLER ca-certificates nano psmisc daemonize
$PACKAGE_GROUPINSTALL -y "C Development Tools and Libraries" "Development Tools" "Fedora Packager"
$PACKAGE_INSTALLER sudo vim make zip unzip at bash-completion ca-certificates jq sshpass net-tools
rm -f /etc/init.d/mariadb
#wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/depbuild.sh -O /root/depbuild.sh
#bash /root/depbuild.sh
mkdir -p /etc/mysql/
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/mysql/my.cnf
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/my.cnf
mkdir -p /etc/init.d/
wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/mariadb.init -O /etc/init.d/mariadb
chmod 777 /etc/init.d/mariadb
service mariadb restart
wget -q -O "/tmp/xtreamcodes.tar.gz" "https://github.com/amidevous/odiniptvpanelfreesourcecode/releases/download/download/main_xtreamcodes_reborn_nobin.tar.gz"
mkdir -p /home/xtreamcodes/
tar -zxvf "/tmp/xtreamcodes.tar.gz" -C "/home/xtreamcodes/"
chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb >/dev/null
rm -rf /home/xtreamcodes/iptv_xtream_codes/admin 2>/dev/null
wget -O /tmp/update.zip "https://github.com/amidevous/odiniptvpanelfreesourcecode/releases/download/download/update_original.zip" 2>/dev/null
unzip /tmp/update.zip -d /tmp/update/ >/dev/null
cp -rf /tmp/update/XtreamUI-master/* /home/xtreamcodes/iptv_xtream_codes/ >/dev/null
rm -rf /tmp/update/XtreamUI-master >/dev/null
rm /tmp/update.zip >/dev/null
rm -rf /tmp/update >/dev/null
chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/ >/dev/null
chmod +x /home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
/home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
find /home/xtreamcodes/ -type d -not \( -name .update -prune \) -exec chmod -R 777 {} + >/dev/null
#wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/php7.2rebuild.sh -O /root/php7.2rebuild.sh
#bash /root/php7.2rebuild.sh
