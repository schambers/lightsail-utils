for i in $(dig dkodedbeats.com ns +short); do echo "Checking $i"; dig @$i _acme-challenge.dkodedbeats.com txt +short;echo ""; done
