while true
do
  echo
  echo `date +"%T"` Stopping CouchDB A
  echo
  vagrant halt couchdb-a --force
  echo
  echo `date +"%T"` CouchDB A stopped
  echo
  sleep 30

  echo
  echo `date +"%T"` Restarting CouchDB A
  echo
  vagrant up couchdb-a --no-provision
  echo
  echo `date +"%T"` CouchDB A restarted
  echo
  sleep 30

  echo
  echo `date +"%T"` Stopping CouchDB B
  echo
  vagrant halt couchdb-b --force
  echo
  echo `date +"%T"` CouchDB B stopped
  echo
  sleep 30

  echo
  echo `date +"%T"` Restarting CouchDB B
  echo
  vagrant up couchdb-b --no-provision
  echo
  echo `date +"%T"` CouchDB B restarted
  echo
  sleep 30
done
