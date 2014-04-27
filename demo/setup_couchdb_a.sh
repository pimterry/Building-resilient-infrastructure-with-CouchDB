curl -X PUT http://localhost:5984/_replicator/a_to_b \
     -H 'Content-Type: application/json' \
     -d '{ "_id": "a_to_b",
           "source": "demo-db",
           "target": "http://10.0.100.20:5984/demo-db/",
           "continuous": true }'
