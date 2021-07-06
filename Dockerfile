FROM mysql:5.7

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone \
&&sed -i 's#http://deb.debian.org#http://mirrors.163.com#g' /etc/apt/sources.list \
 &&  apt update \
# &&apt install -y vim  \
 && apt clean \
 &&rm -rf /var/lib/apt/lists/*

COPY mysqld.cnf /etc/mysql/mysql.conf.d/

ENV  MYSQL_ROOT_PASSWORD=root
