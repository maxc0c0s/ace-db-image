FROM mysql
LABEL Name=ace_database Version=0.0.1
RUN apt-get -y update && apt-get install -y git
RUN git clone -b specify-used-database https://github.com/maxc0c0s/ACE.git /tmp/ACE

COPY  build_database_init.sh /tmp/
RUN chmod 777 /tmp/build_database_init.sh
RUN /tmp/build_database_init.sh
