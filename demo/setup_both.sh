apt-get -q -y install curl couchdb

sleep 5
curl -X PUT 'http://localhost:5984/demo-db'
