# Docker container for a Ookla Speedtest Mini server
# http://www.speedtest.net/mini.php
#


FROM centos
MAINTAINER Chris Collins <collins.christopher@gmail.com>

ADD mini.zip /mini.zip
RUN /usr/bin/yum clean all && /usr/bin/yum install -y --nogpgcheck httpd php unzip
RUN cd /var/www/ && unzip /mini.zip -d /var/www  
RUN rm /var/www/html && mv /var/www/mini /var/www/html
RUN cd /var/www/html && ln -s index-php.html index.php

EXPOSE 80 

CMD ["/usr/sbin/httpd -DFOREGROUND"]
