curl -X PUT http://localhost:5984/_replicator/b_to_a \
     -H 'Content-Type: application/json' \
     -d '{ "_id": "b_to_a",
           "source": "demo-db",
           "target": "http://10.0.100.10:5984/demo-db/",
           "continuous": true }'
