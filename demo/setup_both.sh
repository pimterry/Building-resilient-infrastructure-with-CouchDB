apt-get -q -y install curl couchdb

service couchdb stop

cat /etc/couchdb/local.ini |
  sed 's/^;port .*$/port = 5984/g' |
  sed 's/^;bind_address .*$/bind_address = 0.0.0.0/g' |
  sed 's/^;level .*$/level = warn/g' > /etc/couchdb/local.ini.new

mv /etc/couchdb/local.ini.new /etc/couchdb/local.ini

service couchdb start

sleep 5
curl -X PUT 'http://localhost:5984/demo-db'
