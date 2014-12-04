yum -y update

LANG=C

# 安装相关必要组件
yum -y install gcc gcc-c++ autoconf libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glibc glibc-devel glib2 glib2-devel bzip2 bzip2-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel openldap openldap-devel nss_ldap openldap-clients openldap-servers

# 安装 php mysql php-fpm
yum -y install php mysql mysql-server mysql-devel php-mysql php-cgi php-mbstring php-gd php-fastcgi php-fpm

# 添加nginx的yum源
wget http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
rpm -ivh nginx-release-centos-6-0.el6.ngx.noarch.rpm 
rm nginx-release-centos-6-0.el6.ngx.noarch.rpm

# 安装nginx
yum -y install nginx

# 开启启动
chkconfig mysqld on
chkconfig nginx on
chkconfig php-fpm on
