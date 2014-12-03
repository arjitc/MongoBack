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

Debugging:
=======
If the database isnt getting SCP'd to the remote server you have set, then do this,

    scp any_file_here remote_user@remote_host

You'll then get someting like

    The authenticity of host 'xx.xxxx.xxx (xxx.xxx.xxx.xxx)' can't be established.
    RSA key fingerprint is xxxxxxxxxxxxx.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'xx.xxxx.xxx,xxx.xxx.xxx.xxx' (RSA) to the list of known hosts.
    root@xxx.xxx.xxx.xxx's password:

Now, just exit it by hitting CTRL + C and then try sh dump.sh agian.
