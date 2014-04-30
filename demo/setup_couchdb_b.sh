curl -X PUT http://localhost:5984/_replicator/a_to_b \
     -H 'Content-Type: application/json' \
     -d '{ "_id": "a_to_b",
           "target": "demo-db",
           "source": "http://10.0.100.10:5984/demo-db/",
           "continuous": true }'
