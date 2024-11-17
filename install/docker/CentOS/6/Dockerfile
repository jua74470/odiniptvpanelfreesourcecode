FROM centos:centos6
MAINTAINER "jua74470"

RUN mkdir /var/run/sshd;
# base install with force use http centos vault archive repo not use ssl for centos-releases
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
#remove obsolete centos-vault repository
RUN rm -f /etc/yum.repos.d/CentOS-Vault.repo;
# add new vault centos 6 source code repository
RUN echo "[base-source]" > /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "name=CentOS-6 - Base-Source" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "baseurl=http://mirror.nsc.liu.se/centos-store/centos/6/os/Source/" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "enabled=0" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "metadata_expire=24h" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "[updates-source]" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "name=CentOS-6 - Updates-Source" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "baseurl=http://mirror.nsc.liu.se/centos-store/centos/6/updates/Source/" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "enabled=0" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "metadata_expire=24h" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "[extras-source]" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "name=CentOS-6 - Extras-Source" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "baseurl=http://mirror.nsc.liu.se/centos-store/centos/6/extras/Source/" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "enabled=0" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "metadata_expire=24h" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "[centosplus-source]" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "name=CentOS-6 - Plus-Source" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "baseurl=http://mirror.nsc.liu.se/centos-store/centos/6/centosplus/Source/" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "enabled=0" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "metadata_expire=24h" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "[fasttrack-source]" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "name=CentOS-6 - fasttrack-Source" >> /etc/yum.repos.d/CentOS-Source.repo;
RUN echo "baseurl=http://mirror.nsc.liu.se/centos-store/centos/6/fasttrack/Source/" >> /etc/yum.repos.d/Source.repo;
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/CentOS-fasttrack.repo;
RUN echo "enabled=0" >> /etc/yum.repos.d/CentOS-fasttrack.repo;
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6" >> /etc/yum.repos.d/CentOS-fasttrack.repo;
RUN echo "metadata_expire=24h" >> /etc/yum.repos.d/CentOS-fasttrack.repo;
RUN yum clean all;
RUN yum -y install @core centos-release;
# base install with force use http centos vault archive repo not use ssl for centos-releases
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
#remove obsolete centos-vault repository
RUN rm -f /etc/yum.repos.d/CentOS-Vault.repo;
RUN yum clean all;
RUN yum -y reinstall centos-release;
# base install with force use http centos vault archive repo not use ssl for centos-releases
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
#remove obsolete centos-vault repository
RUN rm -f /etc/yum.repos.d/CentOS-Vault.repo;
RUN yum clean all;
RUN yum -y update;
# base install with force use http centos vault archive repo not use ssl for centos-releases
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-Base.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-fasttrack.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Debuginfo.repo";
#remove obsolete centos-vault repository
RUN rm -f /etc/yum.repos.d/CentOS-Vault.repo;
RUN yum -y install centos-release-cr;
# force use http centos vault archive repo not use ssl for  centos-release-cr
RUN sed -i 's|enabled=0|enabled=1|g' "/etc/yum.repos.d/CentOS-CR.repo";
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-CR.repo";
RUN yum -y install centos-release-azure centos-release-virt-common centos-release-storage-common;
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Azure.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Azure.repo";
RUN yum -y install centos-release-scl centos-release-scl-rh;
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-SCLo-scl.repo";
RUN sed -i 's|# baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-SCLo-scl.repo";
RUN sed -i 's|baseurl=http://vault.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-SCLo-scl.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-SCLo-scl-rh.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-SCLo-scl-rh.repo";
RUN sed -i 's|baseurl=http://vault.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-SCLo-scl-rh.repo";
RUN yum -y install centos-release-xen centos-release-xen-common centos-release-gluster312 centos-release-gluster-legacy centos-release-xen-46 centos-release-xen-48 centos-release-xen-44 centos-release-gluster41 centos-release-gluster5 centos-release-gluster6 centos-release-gluster7 centos-release-xen-410;
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Gluster-4.1.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Gluster-4.1.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Gluster-5.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Gluster-5.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Gluster-5.repo";
RUN sed -i 's|$contentdir|centos|g' "/etc/yum.repos.d/CentOS-Gluster-5.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Gluster-6.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Gluster-6.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Gluster-6.repo";
RUN sed -i 's|$contentdir|centos|g' "/etc/yum.repos.d/CentOS-Gluster-6.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Gluster-7.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Gluster-7.repo";
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Gluster-7.repo";
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Xen-410.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Xen-410.repo";
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Xen-44.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Xen-44.repo";
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Xen-46.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Xen-46.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Xen-dependencies.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/CentOS-Xen-dependencies.repo";
RUN sed -i 's|#baseurl=http://download.fedoraproject.org/pub/|baseurl=http://mirrors.hostiserver.com/fedora/archive/|g' "/etc/yum.repos.d/CentOS-Xen-dependencies.repo";
RUN sed -i 's|baseurl=http://mirror.centos.org|metadata_expire=24h\nbaseurl=http://mirror.nsc.liu.se/centos-store|g' "/etc/yum.repos.d/CentOS-Xen.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/CentOS-Xen.repo";
#remove duplicate CentOS-xen and CentOS-xen-48 identic file contain
RUN rm -f "/etc/yum.repos.d/CentOS-Xen-48.repo";
RUN yum -y install epel-release;
RUN sed -i 's|#baseurl=http://download.fedoraproject.org/pub/|baseurl=http://mirrors.hostiserver.com/fedora/archive/|g' "/etc/yum.repos.d/epel.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/epel.repo";
RUN sed -i 's|#baseurl=http://download.fedoraproject.org/pub/|baseurl=http://mirrors.hostiserver.com/fedora/archive/|g' "/etc/yum.repos.d/epel-testing.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/epel-testing.repo";
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-6.rpm yum-utils;
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi.repo";
RUN sed -i 's|baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-glpi91.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-glpi91.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-glpi91.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-glpi92.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-glpi92.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-glpi92.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-glpi93.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-glpi93.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-glpi93.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-glpi94.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-glpi94.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-glpi94.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-php54.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-php54.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-php54.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-php70.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-php70.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-php70.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-php71.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-php71.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-php71.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-php72.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-php72.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-php72.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-php73.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-php73.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/remi-php73.repo";
RUN sed -i 's|#baseurl=http://rpms.remirepo.net|baseurl=http://fr2.rpmfind.net/linux/remi|g' "/etc/yum.repos.d/remi-safe.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/remi-safe.repo";
RUN yum-config-manager --enable remi;
RUN yum-config-manager --enable remi-php56;
RUN yum -y install http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/free-archive/el/updates/6/x86_64/rpmfusion-free-release-6-4.noarch.rpm;
RUN yum -y install http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/free-archive/el/updates/6/x86_64/rpmfusion-free-release-tainted-6-4.noarch.rpm;
RUN yum -y install http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/nonfree-archive/el/updates/6/x86_64/rpmfusion-nonfree-release-6-4.noarch.rpm;
RUN yum -y install http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/nonfree-archive/el/updates/6/x86_64/rpmfusion-nonfree-release-tainted-6-4.noarch.rpm;
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/free/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/free-archive/|g' "rpmfusion-free-tainted.repo";
RUN sed -i 's|metalink=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-free-tainted.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/rpmfusion-free-tainted.repo";
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/free/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/free-archive/|g' "/etc/yum.repos.d/rpmfusion-free-updates-testing.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-free-updates-testing.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/rpmfusion-free-updates-testing.repo";
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/free/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/free-archive/|g' "/etc/yum.repos.d/rpmfusion-free-updates.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-free-updates.repo";
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/nonfree/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/nonfree-archive/|g' "rpmfusion-nonfree-tainted.repo";
RUN sed -i 's|metalink=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-nonfree-tainted.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/rpmfusion-nonfree-tainted.repo";
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/nonfree/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/nonfree-archive/|g' "/etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo";
RUN sed -i 's|enabled=1|enabled=0|g' "/etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo";
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/nonfree/|baseurl=http://mirror1.hs-esslingen.de/pub/Mirrors/archive.rpmfusion.org/nonfree-archive/|g' "/etc/yum.repos.d/rpmfusion-nonfree-updates.repo";
RUN sed -i 's|mirrorlist=.*|metadata_expire=24h|g' "/etc/yum.repos.d/rpmfusion-nonfree-updates.repo";



RUN yum -y update;
RUN yum install -y curl;
RUN yum clean all;
RUN yum -y update
RUN yum --setopt=metadata_expire=never install -y libicu-devel;
RUN yum --setopt=metadata_expire=never install -y tzdata;
RUN yum --setopt=metadata_expire=never install -y openssh-server;
RUN yum --setopt=metadata_expire=never install -y sudo;
RUN yum --setopt=metadata_expire=never install -y vim;
RUN yum --setopt=metadata_expire=never install -y make;
RUN yum --setopt=metadata_expire=never install -y zip;
RUN yum --setopt=metadata_expire=never install -y unzip;
RUN yum --setopt=metadata_expire=never install -y chkconfig;
RUN yum --setopt=metadata_expire=never install -y bash-completion;
RUN yum --setopt=metadata_expire=never install -y wget;
RUN yum --setopt=metadata_expire=never install -y bzip2-libs;
RUN yum --setopt=metadata_expire=never install -y curl-devel;
RUN yum --setopt=metadata_expire=never install -y libcurl-devel;
RUN yum --setopt=metadata_expire=never install -y perl-libwww-perl;
RUN yum --setopt=metadata_expire=never install -y libxml2;
RUN yum --setopt=metadata_expire=never install -y libxml2-devel;
RUN yum --setopt=metadata_expire=never install -y bzip2-devel;
RUN yum --setopt=metadata_expire=never install -y gcc;
RUN yum --setopt=metadata_expire=never install -y gcc-c++;
RUN yum --setopt=metadata_expire=never install -y autoconf;
RUN yum --setopt=metadata_expire=never install -y automake;
RUN yum --setopt=metadata_expire=never install -y libtool;
RUN yum --setopt=metadata_expire=never install -y libtool-ltdl-devel;
#RUN yum --setopt=metadata_expire=never install -y git-core;
RUN yum --setopt=metadata_expire=never install -y systemtap-sdt-devel;
RUN yum --setopt=metadata_expire=never install -y procps;
RUN yum --setopt=metadata_expire=never install -y at;
RUN yum --setopt=metadata_expire=never install -y ca-certificates;
RUN yum --setopt=metadata_expire=never install -y nano;
RUN yum --setopt=metadata_expire=never install -y psmisc;
RUN yum --setopt=metadata_expire=never install -y daemonize;
RUN yum --setopt=metadata_expire=never install -y jq;
RUN yum --setopt=metadata_expire=never install -y sshpass;
RUN yum --setopt=metadata_expire=never install -y net-tools;
RUN yum --setopt=metadata_expire=never install -y e2fsprogs;
RUN yum --setopt=metadata_expire=never install -y e2fsprogs-devel;
RUN yum --setopt=metadata_expire=never install -y e2fsprogs-libs;
RUN yum --setopt=metadata_expire=never install -y e2fsprogs-static;
RUN yum --setopt=metadata_expire=never install -y libxslt-devel;
#RUN yum --setopt=metadata_expire=never install -y GeoIP-devel;
#RUN yum --setopt=metadata_expire=never install -y GeoIP-*;
RUN yum --setopt=metadata_expire=never install -y htop;
RUN yum --setopt=metadata_expire=never install -y httpd;
RUN yum --setopt=metadata_expire=never install -y httpd-devel;
RUN yum --setopt=metadata_expire=never install -y mc;
RUN yum --setopt=metadata_expire=never install -y libpng-devel;
RUN yum --setopt=metadata_expire=never install -y mcrypt;
RUN yum --setopt=metadata_expire=never install -y libmcrypt-devel;
RUN yum --setopt=metadata_expire=never install -y libmaxminddb-devel;
RUN yum --setopt=metadata_expire=never install -y libX11-devel;
RUN yum --setopt=metadata_expire=never install -y zlib-devel;
RUN yum --setopt=metadata_expire=never install -y gnupg2;
RUN yum --setopt=metadata_expire=never install -y gnupg;
RUN yum --setopt=metadata_expire=never install -y pam-devel;
RUN yum --setopt=metadata_expire=never install -y pam;
#RUN yum --setopt=metadata_expire=never install -y nginx;
#RUN yum --setopt=metadata_expire=never install -y nginx-devel;
RUN yum --setopt=metadata_expire=never install -y libstdc++-devel;
RUN yum --setopt=metadata_expire=never install -y openssl-devel;
RUN yum --setopt=metadata_expire=never install -y sqlite-devel;
RUN yum --setopt=metadata_expire=never install -y zlib-devel;
RUN yum --setopt=metadata_expire=never install -y smtpdaemon;
RUN yum --setopt=metadata_expire=never install -y libedit-devel;
RUN yum --setopt=metadata_expire=never install -y pcre-devel;
RUN yum --setopt=metadata_expire=never install -y pcre2-devel;
#RUN yum --setopt=metadata_expire=never install -y libxcrypt-devel;
RUN yum --setopt=metadata_expire=never install -y perl-interpreter;
RUN yum --setopt=metadata_expire=never install -y libacl-devel;
#RUN yum --setopt=metadata_expire=never install -y systemd-devel;
RUN yum --setopt=metadata_expire=never install -y krb5-devel;
RUN yum --setopt=metadata_expire=never install -y libc-client-devel;
RUN yum --setopt=metadata_expire=never install -y cyrus-sasl-devel;
RUN yum --setopt=metadata_expire=never install -y openldap-devel;
#RUN yum --setopt=metadata_expire=never install -y libpq-devel;
RUN yum --setopt=metadata_expire=never install -y unixODBC-devel;
RUN yum --setopt=metadata_expire=never install -y firebird-devel;
RUN yum --setopt=metadata_expire=never install -y net-snmp-devel;
RUN yum --setopt=metadata_expire=never install -y oniguruma-devel;
RUN yum --setopt=metadata_expire=never install -y gd-devel gmp-devel;
RUN yum --setopt=metadata_expire=never install -y db4-devel;
RUN yum --setopt=metadata_expire=never install -y tokyocabinet-devel;
RUN yum --setopt=metadata_expire=never install -y lmdb-devel;
#RUN yum --setopt=metadata_expire=never install -y qdbm-devel;
RUN yum --setopt=metadata_expire=never install -y libtidy-devel;
RUN yum --setopt=metadata_expire=never install -y freetds-devel;
RUN yum --setopt=metadata_expire=never install -y aspell-devel;
RUN yum --setopt=metadata_expire=never install -y enchant-devel;
#RUN yum --setopt=metadata_expire=never install -y libenchant-devel;
RUN yum --setopt=metadata_expire=never install -y libsodium-devel;
#RUN yum --setopt=metadata_expire=never install -y sodium-devel;
#RUN yum --setopt=metadata_expire=never install -y libffi-devel;
#RUN yum --setopt=metadata_expire=never install -y ffi-devel;
#RUN yum --setopt=metadata_expire=never install -y xslt-devel;
#RUN yum --setopt=metadata_expire=never install -y yasm;
#RUN yum --setopt=metadata_expire=never install -y nasm;
#RUN yum --setopt=metadata_expire=never install -y gnutls-devel;
#RUN yum --setopt=metadata_expire=never install -y ass-devel;
#RUN yum --setopt=metadata_expire=never install -y librtmp-devel;
#RUN yum --setopt=metadata_expire=never install -y librtmp;
#RUN yum --setopt=metadata_expire=never install -y rtmp-devel;
#RUN yum --setopt=metadata_expire=never install -y rtmp;
#RUN yum --setopt=metadata_expire=never install -y rtmpdump;
#RUN yum --setopt=metadata_expire=never install -y alsa-lib-devel;
#RUN yum --setopt=metadata_expire=never install -y AMF-devel;
#RUN yum --setopt=metadata_expire=never install -y flite-devel;
#RUN yum --setopt=metadata_expire=never install -y fontconfig-devel;
#RUN yum --setopt=metadata_expire=never install -y freetype-devel;
#RUN yum --setopt=metadata_expire=never install -y fribidi-devel;
#RUN yum --setopt=metadata_expire=never install -y frei0r-devel;
#RUN yum --setopt=metadata_expire=never install -y game-music-emu-devel;
#RUN yum --setopt=metadata_expire=never install -y gsm-devel;
#RUN yum --setopt=metadata_expire=never install -y ilbc-devel;
#RUN yum --setopt=metadata_expire=never install -y jack-audio-connection-kit-devel;
#RUN yum --setopt=metadata_expire=never install -y ladspa-devel;
#RUN yum --setopt=metadata_expire=never install -y libaom-devel;
#RUN yum --setopt=metadata_expire=never install -y libdav1d-devel;
#RUN yum --setopt=metadata_expire=never install -y libass-devel;
#RUN yum --setopt=metadata_expire=never install -y libbluray-devel;
#RUN yum --setopt=metadata_expire=never install -y libbs2b-devel;
#RUN yum --setopt=metadata_expire=never install -y libcaca-devel;
#RUN yum --setopt=metadata_expire=never install -y libcdio-paranoia-devel;
#RUN yum --setopt=metadata_expire=never install -y libchromaprint-devel;
#RUN yum --setopt=metadata_expire=never install -y libcrystalhd-devel;
#RUN yum --setopt=metadata_expire=never install -y lensfun-devel;
#RUN yum --setopt=metadata_expire=never install -y libavc1394-devel;
#RUN yum --setopt=metadata_expire=never install -y libdc1394-devel;
#RUN yum --setopt=metadata_expire=never install -y libiec61883-devel;
#RUN yum --setopt=metadata_expire=never install -y libdrm-devel;
#RUN yum --setopt=metadata_expire=never install -y libgcrypt-devel;
#RUN yum --setopt=metadata_expire=never install -y libGL-devel;
#RUN yum --setopt=metadata_expire=never install -y libmodplug-devel;
#RUN yum --setopt=metadata_expire=never install -y libmysofa-devel;
#RUN yum --setopt=metadata_expire=never install -y libopenmpt-devel;
#RUN yum --setopt=metadata_expire=never install -y librsvg2-devel;
#RUN yum --setopt=metadata_expire=never install -y libsmbclient-devel;
#RUN yum --setopt=metadata_expire=never install -y libssh-devel;
#RUN yum --setopt=metadata_expire=never install -y libtheora-devel;
#RUN yum --setopt=metadata_expire=never install -y libv4l-devel;
#RUN yum --setopt=metadata_expire=never install -y libva-devel;
#RUN yum --setopt=metadata_expire=never install -y libvdpau-devel;
#RUN yum --setopt=metadata_expire=never install -y vapoursynth-devel;
#RUN yum --setopt=metadata_expire=never install -y libvpx-devel;
#RUN yum --setopt=metadata_expire=never install -y libmfx mfx;
#RUN yum --setopt=metadata_expire=never install -y libmfx-devel;
#RUN yum --setopt=metadata_expire=never install -y nasm libwebp-devel;
#RUN yum --setopt=metadata_expire=never install -y netcdf-devel;
#RUN yum --setopt=metadata_expire=never install -y raspberrypi-vc-devel;
#RUN yum --setopt=metadata_expire=never install -y nv-codec-headers;
#RUN yum --setopt=metadata_expire=never install -y opencore-amr-devel;
#RUN yum --setopt=metadata_expire=never install -y vo-amrwbenc-devel;
#RUN yum --setopt=metadata_expire=never install -y libomxil-bellagio-devel;
#RUN yum --setopt=metadata_expire=never install -y libxcb-devel;
#RUN yum --setopt=metadata_expire=never install -y lilv-devel;
#RUN yum --setopt=metadata_expire=never install -y lv2-devel;
#RUN yum --setopt=metadata_expire=never install -y openal-soft-devel;
#RUN yum --setopt=metadata_expire=never install -y opencl-headers;
#RUN yum --setopt=metadata_expire=never install -y ocl-icd-devel;
#RUN yum --setopt=metadata_expire=never install -y openjpeg2-devel;
#RUN yum --setopt=metadata_expire=never install -y pulseaudio-libs-devel;
#RUN yum --setopt=metadata_expire=never install -y podman;
#RUN yum --setopt=metadata_expire=never install -y rav1e-devel;
#RUN yum --setopt=metadata_expire=never install -y rubberband-devel;
#RUN yum --setopt=metadata_expire=never install -y SDL2-devel;
#RUN yum --setopt=metadata_expire=never install -y snappy-devel;
#RUN yum --setopt=metadata_expire=never install -y soxr-devel;
#RUN yum --setopt=metadata_expire=never install -y speex-devel;
#RUN yum --setopt=metadata_expire=never install -y srt-devel;
#RUN yum --setopt=metadata_expire=never install -y srt-libs;
#RUN yum --setopt=metadata_expire=never install -y srt-lib;
#RUN yum --setopt=metadata_expire=never install -y srt;
#RUN yum --setopt=metadata_expire=never install -y svt-av1-devel;
#RUN yum --setopt=metadata_expire=never install -y tesseract-devel;
#RUN yum --setopt=metadata_expire=never install -y texi2html;
#RUN yum --setopt=metadata_expire=never install -y texinfo;
#RUN yum --setopt=metadata_expire=never install -y twolame-devel;
#RUN yum --setopt=metadata_expire=never install -y libvmaf-devel;
#RUN yum --setopt=metadata_expire=never install -y wavpack-devel;
#RUN yum --setopt=metadata_expire=never install -y vid.stab-devel;
#RUN yum --setopt=metadata_expire=never install -y vulkan-loader-devel;
#RUN yum --setopt=metadata_expire=never install -y libshaderc-devel;
#RUN yum --setopt=metadata_expire=never install -y libshaderc;
#RUN yum --setopt=metadata_expire=never install -y spirv-tools-libs;
#RUN yum --setopt=metadata_expire=never install -y zimg-devel;
#RUN yum --setopt=metadata_expire=never install -y zlib-devel;
#RUN yum --setopt=metadata_expire=never install -y zeromq-devel;
#RUN yum --setopt=metadata_expire=never install -y zvbi-devel;
#RUN yum --setopt=metadata_expire=never install -y vmaf-models;
#RUN yum --setopt=metadata_expire=never install -y pkgconfig;
#RUN yum --setopt=metadata_expire=never install -y libunistring-devel;
#RUN yum --setopt=metadata_expire=never install -y unistring-devel;
#RUN yum --setopt=metadata_expire=never install -y libunistring;
#RUN yum --setopt=metadata_expire=never install -y unistring;
#RUN yum --setopt=metadata_expire=never install -y re2c;
#RUN yum --setopt=metadata_expire=never install -y perl;
#RUN yum --setopt=metadata_expire=never install -y debhelper;
#RUN yum --setopt=metadata_expire=never install -y cdbs;
#RUN yum --setopt=metadata_expire=never install -y lintian;
#RUN yum --setopt=metadata_expire=never install -y fakeroot;
#RUN yum --setopt=metadata_expire=never install -y devscripts;
#RUN yum --setopt=metadata_expire=never install -y dh-make;
#RUN yum --setopt=metadata_expire=never install -y dput;
#RUN yum --setopt=metadata_expire=never install -y pbuilder;
#RUN yum --setopt=metadata_expire=never install -y debootstrap;
#RUN yum --setopt=metadata_expire=never install -y apt;
#RUN yum --setopt=metadata_expire=never install -y dpkg;
#RUN yum --setopt=metadata_expire=never install -y perl-macros;
#RUN yum --setopt=metadata_expire=never install -y perl-srpm-macros;
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''; \
    sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd; \
    sed -i 's/^#\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config; \
    sed -i 's/^\(UsePAM yes\)/# \1/' /etc/ssh/sshd_config; \  
    yum clean all;

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
#CMD ["/usr/sbin/init"]
CMD    ["/usr/sbin/sshd", "-D"]
