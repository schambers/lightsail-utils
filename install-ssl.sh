DOMAIN=dkodedbeats.com

/opt/bitnami/ctlscript.sh stop

mv /opt/bitnami/apache2/conf/server.crt /opt/bitnami/apache2/conf/server.crt.old
mv /opt/bitnami/apache2/conf/server.key /opt/bitnami/apache2/conf/server.key.old

ln -s /etc/letsencrypt/live/$DOMAIN/privkey.pem /opt/bitnami/apache2/conf/server.key
ln -s /etc/letsencrypt/live/$DOMAIN/fullchain.pem /opt/bitnami/apache2/conf/server.crt

/opt/bitnami/ctlscript.sh start
