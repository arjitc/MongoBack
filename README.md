MongoBack
=========

Backup and remote SCP MongoDB databases.

Installation
=======

    yum install sshpass (if on CentOS) or apt-get install sshpass (if on Debian/Ubuntu)

You may or may not have to install mongodump as well.

Set all the variables as required in the script and then,

    sh mongoback.sh

Final notes
=======
This is not tested at all, use it with caution, perhaps test it on a test machine or on a test database.
