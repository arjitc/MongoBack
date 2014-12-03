#!/bin/bash
#dont forget to set these below or else this script will not work

$database = ""
$username = ""
$password = ""
$host = "127.0.0.1"
$port = "27017"

#details for SCP
remote_host=""
remote_host_username=""
remote_host_password=""
ssh_port=""

# Define a timestamp function
timestamp() {
  date +%s
}

# lets dump the DB now
##create directory if it doesnt exist
mkdir -p /root/dump/
##cd into directory
cd /root/dump/
##create filename off timestamp function above
filename=$(timestamp)
remote_filename=$filename.tar.gz
##actually dump database
mongodump --host $host  --port $port --db $database --username $username --password $password
##tar the file
tar -zcvf $remote_filename /root/dump/

##scp the file
sshpass -p "$remote_host_password" scp -P $ssh_port $remote_filename $remote_host_username@$remote_host:/root

#lets delete the local backup file which we created above
shred -uvz $remote_filename

echo "Done!"

