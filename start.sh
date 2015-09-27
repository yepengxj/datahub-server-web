#!/bin/bash
if [ "$MYSQL_PORT_3306_TCP_ADDR" ]; then
	sed  -i 's/^jdbc_url=.*$/jdbc_url=jdbc:mysql:\/\/'$MYSQL_PORT_3306_TCP_ADDR':'$MYSQL_PORT_3306_TCP_PORT'\/'$MYSQL_ENV_MYSQL_USER'\?useUnicode=true\&characterEncoding=UTF-8\&zeroDateTimeBehavior=convertToNull /g' /usr/local/tomcat/webapp/config.properties


	sed -i  's/^jdbc_username=.*$/jdbc_username='$MYSQL_ENV_MYSQL_USER'/g' config.properties

	sed  -i 's/^jdbc_password=.*$/jdbc_password='$MYSQL_ENV_MYSQL_PASSWORD'/g' config.properties
fi

catalina.sh run
