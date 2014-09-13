curl -X PUT http://localhost:5984/_replicator/b_to_a \
     -H 'Content-Type: application/json' \
     -d '{ "_id": "b_to_a",
           "target": "demo-db",
           "source": "http://10.0.100.20:5984/demo-db/",
           "continuous": true }'

echo
echo ** CouchDB A setup completed **
echo
