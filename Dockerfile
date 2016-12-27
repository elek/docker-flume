FROM elek/bigdata-base:8
ENV CONF_DIR /opt/flume/conf
ADD defaults/* defaults/
ADD url .
RUN wget `cat url` -O flume.tar.gz && tar zxf flume.tar.gz && rm flume.tar.gz && mv /opt/apache-flume* /opt/flume
ADD starter.sh .
CMD ["/opt/starter.sh"]
