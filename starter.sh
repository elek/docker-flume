#!/bin/bash
/opt/flume/bin/flume-ng agent --conf ${FLUME_CONF_DIR:-/opt/flume/conf/} --name ${FLUME_NAME-agent} ${FLUME_OPTS:--Dflume.root.logger=INFO,console} -f ${FLUME_CONFIG_FILE:-/opt/flume/conf/flume-conf.properties} $@
