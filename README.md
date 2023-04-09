# oracle-shell-scripts
small useful oracle scripts 


## 1. ckinstance.ksh
make sure file has execute permission, and then execute.
````$ chmod 744 ckinstance.ksh
$ ls -l ckinstance.ksh
-rwxr--r--   1 oracle     dba     657 Mar  5 22:59 ckinstance.ksh*

$ ckinstance.ksh
Mon Mar  4 10:44:12 PST 2002
Oracle Database(s) Status for DBHOST server:
Oracle Instance - oradb1:   Up
Oracle Instance - oradb2:   Up
Oracle Instance - oradb3:   Down
Oracle Instance - oradb4:   Up
````

## 2.rman_archive_delete.sh
````
[oracle@localhost ~]$ sh Archives_delete.sh

=============================================================
This script Deletes the ARCHIVELOGS of a database using RMAN.
=============================================================


Select the ORACLE_SID:[Enter the number]
---------------------
1) ORCL21C
2) TEST
#? 2

Selected Instance: [ TEST ]
````
