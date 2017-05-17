FROM centos

RUN yum -y update
RUN yum install -y nano vim net-tools
RUN yum  install -y httpd
RUN yum install -y php

ADD phpinfo.php /opt/phpinfo.php
ADD run-httpd.sh /opt/run-httpd.sh
RUN chmod +x /opt/run-httpd.sh


EXPOSE 80

CMD ["/opt/run-httpd.sh"]
