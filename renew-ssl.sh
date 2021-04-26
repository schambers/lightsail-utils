DOMAIN=dkodedbeats.com
WILDCARD=*.$DOMAIN

certbot -d $DOMAIN -d $WILDCARD --manual --preferred-challenges dns certonly
