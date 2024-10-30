#!/bin/bash
# sudo apt-get update
# sudo apt-get -y install wget
# sudo yum -y install wget
# sudo wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/master/install/install-bin-main-Ubuntu.sh -O /root/install-bin-main-Ubuntu.sh && sudo bash /root/install-bin-main-Ubuntu.sh
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
    CODE=$(grep DISTRIB_CODENAME /etc/lsb-release | sed 's/^.*=//')
elif [ -f /etc/os-release ]; then
    OS=$(grep -w ID /etc/os-release | sed 's/^.*=//')
    VER=$(grep VERSION_ID /etc/os-release | sed 's/^.*"\(.*\)"/\1/')
 else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

echo "Detected : $OS  $VER  $ARCH"
if [[ "$OS" = "Ubuntu" && ("$VER" = "12.04" || "$VER" > "12.04") && "$ARCH" == "x86_64" ]] ; then
echo "Ok."
else
    echo "Sorry, this OS is not supported by Xtream UI."
    exit 1
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "12.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=old-releases.ubuntu.com
LTS=precise
APTLTSSECURE=old-releases.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.2/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-trusty"
echo "ubuntu 12.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "12.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=old-releases.ubuntu.com
LTS=precise
APTLTSSECURE=old-releases.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.2/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-trusty"
echo "ubuntu 12.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "13.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=old-releases.ubuntu.com
LTS=precise
APTLTSSECURE=old-releases.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.2/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-trusty"
echo "ubuntu 13.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "13.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=old-releases.ubuntu.com
LTS=precise
APTLTSSECURE=old-releases.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.2/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-trusty"
echo "ubuntu 13.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "14.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=truty
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.4/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-xenial"
echo "ubuntu 14.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "14.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=truty
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.4/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-xenial"
echo "ubuntu 14.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "15.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=truty
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.4/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-xenial"
echo "ubuntu 15.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "15.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=truty
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.4/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-lts-xenial"
echo "ubuntu 15.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "16.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=xenial
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.5/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-16.04"
echo "ubuntu 16.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "16.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=xenial
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.5/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-16.04"
echo "ubuntu 16.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "17.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=xenial
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.5/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-16.04"
echo "ubuntu 17.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "17.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=xenial
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.5/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-16.04"
echo "ubuntu 17.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "18.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=bionic
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-18.04"
echo "ubuntu 18.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "18.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=bionic
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-18.04"
echo "ubuntu 18.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "19.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=bionic
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-18.04"
echo "ubuntu 19.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "19.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=bionic
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-18.04"
echo "ubuntu 19.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "20.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=focal
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-20.04"
echo "ubuntu 20.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "20.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=focal
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-20.04"
echo "ubuntu 20.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "21.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=focal
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-20.04"
echo "ubuntu 21.04"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "21.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=focal
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y install --install-recommends linux-generic-hwe-20.04"
echo "ubuntu 21.10"
sleep 30
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "22.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=jammy
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 22.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "22.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=jammy
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 22.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "23.04" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=jammy
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 23.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "23.10" ]] ; then
APT=old-releases.ubuntu.com
APTSECURE=old-releases.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=jammy
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 23.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "24.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 24.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "24.10" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 24.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "25.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 25.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "25.10" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 25.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "26.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 26.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "26.10" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 26.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "27.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 27.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "27.10" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 27.10"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
if  [[ "$OS" = "Ubuntu" && "$VER" = "28.04" ]] ; then
APT=archive.ubuntu.com
APTSECURE=security.ubuntu.com
APTLTS=archive.ubuntu.com
LTS=noble
APTLTSSECURE=security.ubuntu.com
APTMARIA='deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.mariadb.asc] https://archive.mariadb.org/mariadb-10.11/repo/ubuntu '$LTS' main'
APTMAX='deb [signed-by=/etc/apt/trusted.gpg.d/packages.maxmind.asc] http://ppa.launchpad.net/maxmind/ppa/ubuntu '$LTS' main'
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xCBCB082A1BB943DB" -O /etc/apt/trusted.gpg.d/packages.mariadb.asc
wget -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xDE1997DCDE742AFA" -O /etc/apt/trusted.gpg.d/packages.maxmind.asc
APTKERNEL="DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade"
echo "ubuntu 28.04"
sleep 30
sed -i "s|#\$nrconf{verbosity} = 2;|\$nrconf{verbosity} = 0;|" /etc/needrestart/needrestart.conf
sed -i "s|#\$nrconf{restart} = 'i';|\$nrconf{restart} = 'a';|" /etc/needrestart/needrestart.conf
fi
cat > /etc/apt/sources.list <<EOF
deb http://$APT/ubuntu/ $CODE main restricted universe multiverse
deb http://$APTLTS/ubuntu/ $LTS main restricted universe multiverse
deb-src http://$APT/ubuntu/ $CODE main restricted universe multiverse
deb http://$APT/ubuntu/ $CODE-updates main restricted universe multiverse
deb http://$APTLTS/ubuntu/ $LTS-updates main restricted universe multiverse
deb-src http://$APT/ubuntu/ $CODE-updates main restricted universe multiverse
deb http://$APTSECURE/ubuntu $CODE-security main restricted universe multiverse
deb http://$APTLTSSECURE/ubuntu $LTS-security main restricted universe multiverse
deb-src http://$APTSECURE/ubuntu $CODE-security main restricted universe multiverse
#deb http://archive.canonical.com/ubuntu $LTS partner
#deb-src http://archive.canonical.com/ubuntu $LTS partner
#deb http://extras.ubuntu.com/ubuntu $LTS main
#deb-src http://extras.ubuntu.com/ubuntu $LTS main
EOF
echo $APTMARIA > /etc/apt/mariadb.list
echo $APTMAX > /etc/apt/sources.list.d/maxmind-ppa-$CODE.list
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
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

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install ubuntu-minimal
DEBIAN_FRONTEND=noninteractive apt-get -y install ssh
DEBIAN_FRONTEND=noninteractive apt-get -y install libwebp6
DEBIAN_FRONTEND=noninteractive apt-get -y install libwebp2
DEBIAN_FRONTEND=noninteractive apt-get -y install sudo
DEBIAN_FRONTEND=noninteractive apt-get -y install libjpeg62
DEBIAN_FRONTEND=noninteractive apt-get -y install libcurl4
DEBIAN_FRONTEND=noninteractive apt-get -y install libcurl3
DEBIAN_FRONTEND=noninteractive apt-get -y install libxslt1-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install libgeoip-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install e2fsprogs
DEBIAN_FRONTEND=noninteractive apt-get -y install wget
cd /tmp
DEBIAN_FRONTEND=noninteractive apt-get -y install devscripts
DEBIAN_FRONTEND=noninteractive apt-get -y build-dep wget
DEBIAN_FRONTEND=noninteractive apt-get -y install libgnutls-dev
DEBIAN_FRONTEND=noninteractive apt-get source wget
cd wget-*/
sed -i "s|wget (|wget (1:|" debian/changelog
sed -i "s|openssl|gnutls|" debian/rules
debuild
cd ..
dpkg -i wget*.deb
rm -rf *
DEBIAN_FRONTEND=noninteractive apt-get -y install mcrypt
DEBIAN_FRONTEND=noninteractive apt-get -y install nscd
DEBIAN_FRONTEND=noninteractive apt-get -y install htop
DEBIAN_FRONTEND=noninteractive apt-get -y install zip
DEBIAN_FRONTEND=noninteractive apt-get -y install unzip
DEBIAN_FRONTEND=noninteractive apt-get -y install mc
DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server
DEBIAN_FRONTEND=noninteractive apt-get -y install libpng12-0
DEBIAN_FRONTEND=noninteractive apt-get -y install git
DEBIAN_FRONTEND=noninteractive apt-get -y install libmaxminddb-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install libpcre3-dev
DEBIAN_FRONTEND=noninteractive apt-get -y install libapparmor1
mkdir -p /home/xtreamcodes
chown xtreamcodes:xtreamcodes -R /home/xtreamcodes
chmod -R 0777 /home/xtreamcodes
mkdir -p /etc/mysql/
wget --no-check-certificate https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/mysql/my.cnf
wget --no-check-certificate https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/my.cnf -O /etc/my.cnf
mv /etc/init.d/mysql /etc/init.d/mariadb
chmod +x /etc/init.d/mariadb
service mariadb restart
wget --no-check-certificate -q -O "/tmp/xtreamcodes.tar.xz" "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/main_xtreamcodes_reborn_nobin.tar.xz"
mkdir -p /home/xtreamcodes/
tar -xvf "/tmp/xtreamcodes.tar.xz" -C "/home/xtreamcodes/"
chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb >/dev/null
rm -rf /home/xtreamcodes/iptv_xtream_codes/admin 2>/dev/null
cd /home/xtreamcodes
rm -rf phpbuild
wget --no-check-certificate https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/phpbuild-php7.2-Ubuntu-$LTS.tar.xz
tar -xvf phpbuild-php7.2-Ubuntu-$LTS.tar.xz
rm -f phpbuild-php7.2-Ubuntu-$LTS.tar.xz
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
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/balance.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/balance.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/fastcgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-utf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/koi-win https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-win
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/mime.types.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.final
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/scgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.crt https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.crt
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.csr https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.csr
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/server.key https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.key
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/uwsgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/win-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/win-utf
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
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/balance.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/balance.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi.conf.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi.conf.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/fastcgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/fastcgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-utf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/koi-win https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/koi-win
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/mime.types.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/mime.types.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/nginx.conf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx_rtmp/conf/nginx.conf
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/scgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/scgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.crt https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.crt
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.csr https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.csr
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/server.key https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/server.key
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/uwsgi_params.default https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/uwsgi_params.default
wget --no-check-certificate -O /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/conf/win-utf https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/win-utf
cd /home/xtreamcodes/phpbuild/php-7.2.34
make install
cd /home/xtreamcodes/phpbuild/mcrypt-1.0.5
make install
cd /home/xtreamcodes/phpbuild/geoip-1.1.1
make install
cd /home/xtreamcodes/phpbuild/igbinary-3.2.14
make install
cd /home/xtreamcodes/phpbuild/
wget --no-check-certificate https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar -xvf ioncube_loaders_lin_x86-64.tar.gz
cp ioncube/ioncube_loader_lin_7.2.so /home/xtreamcodes/iptv_xtream_codes/php/lib/php/extensions/no-debug-non-zts-20170718/
wget --no-check-certificate -O /tmp/update.zip "https://github.com/jua74470/odiniptvpanelfreesourcecode/releases/download/download/update_original.zip" 2>/dev/null
unzip /tmp/update.zip -d /tmp/update/ >/dev/null
cp -rf /tmp/update/XtreamUI-master/* /home/xtreamcodes/iptv_xtream_codes/ >/dev/null
rm -rf /tmp/update/XtreamUI-master >/dev/null
rm /tmp/update.zip >/dev/null
rm -rf /tmp/update >/dev/null
rm -f /home/xtreamcodes/iptv_xtream_codes/bin/ffmpeg
rm -f /home/xtreamcodes/iptv_xtream_codes/bin/ffprobe
ln -s /home/xtreamcodes/iptv_xtream_codes/bin/ffmpeg_2018 /home/xtreamcodes/iptv_xtream_codes/bin/ffmpeg
ln -s /home/xtreamcodes/iptv_xtream_codes/bin/ffprobe_2018 /home/xtreamcodes/iptv_xtream_codes/bin/ffprobe
chmod 777 /home/xtreamcodes/iptv_xtream_codes/bin/ffmpeg
chmod 777 /home/xtreamcodes/iptv_xtream_codes/bin/ffprobe
chmod 777 /home/xtreamcodes/iptv_xtream_codes/bin/ffmpeg_2018
chmod 777 /home/xtreamcodes/iptv_xtream_codes/bin/ffprobe_2018
wget --no-check-certificate "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/nginx/conf/nginx.conf.final" -O /home/xtreamcodes/iptv_xtream_codes/nginx/conf/nginx.conf
wget --no-check-certificate "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/wwwdir/darkino.php" -qO /home/xtreamcodes/iptv_xtream_codes/wwwdir/darkino.php >/dev/null
chattr +i /home/xtreamcodes/iptv_xtream_codes/wwwdir/darkino.php >/dev/null
wget --no-check-certificate "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/admin/episode.php" -qO /home/xtreamcodes/iptv_xtream_codes/admin/episode.php >/dev/null
chattr +i /home/xtreamcodes/iptv_xtream_codes/admin/episode.php >/dev/null
wget --no-check-certificate "https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/master/admin/movie.php" -qO /home/xtreamcodes/iptv_xtream_codes/admin/movie.php >/dev/null
chattr +i /home/xtreamcodes/iptv_xtream_codes/admin/movie.php >/dev/null
chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/  2>/dev/null
chmod +x /home/xtreamcodes/iptv_xtream_codes/permissions.sh >/dev/null
/home/xtreamcodes/iptv_xtream_codes/permissions.sh  2>/dev/null
find /home/xtreamcodes/ -type d -not \( -name .update -prune \) -exec chmod -R 777 {} + >/dev/null

