while true
do
  curl -X POST 'http://couchdb-A:5984/demo-db' \
       -H "content-type: application/json" \
       -d '{ "created_at": "'"`date +%s%N`"'" }' \
       --max-time 0.1

  curl -X POST 'http://couchdb-B:5984/demo-db' \
       -H "content-type: application/json" \
       -d '{ "created_at": "'"`date +%s%N`"'" }' \
       --max-time 0.1
done
