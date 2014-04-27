vagrant up couchdb-a --no-provision
vagrant up couchdb-b --no-provision

while true
do
  echo `date +"%T"` Stopping CouchDB A
  vagrant halt couchdb-a --force
  echo `date +"%T"` CouchDB A stopped
  sleep 30

  echo `date +"%T"` Restarting CouchDB A
  vagrant up couchdb-a --no-provision
  echo `date +"%T"` CouchDB A restarted
  sleep 30

  echo `date +"%T"` Stopping CouchDB B
  vagrant halt couchdb-b --force
  echo `date +"%T"` CouchDB B stopped
  sleep 30

  echo `date +"%T"` Restarting CouchDB B
  vagrant up couchdb-b --no-provision
  echo `date +"%T"` CouchDB B restarted
  sleep 30
done
