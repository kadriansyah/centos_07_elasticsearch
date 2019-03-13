# image name: kadriansyah/elasticsearch_6_6_2:v1
FROM  docker.elastic.co/elasticsearch/elasticsearch:6.6.2
LABEL version="1.0"
LABEL maintainer="Kiagus Arief Adriansyah <kadriansyah@gmail.com>"

# HTOP
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install htop

# REDIS
RUN yum -y install epel-release yum-utils
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi
RUN yum -y install redis