# oracle-shell-scripts
small useful oracle scripts 


## 1. ckinstance.ksh
make sure file has execute permission, and then execute.
````shell
$ chmod 744 ckinstance.ksh
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
````shell
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

## 3. rman_backup.sh
-- This script Run RMAN command in the background
````shell
[oracle@localhost ~]$ sh rman_bkp.sh

===================================================
This script Takes a RMAN FULL Backup of a database.
===================================================


Select the ORACLE_SID:[Enter the number]
---------------------
1) ORCL21C
2) TEST
#? 3

Error: Not a valid number!

Enter a valid NUMBER from the displayed list !: i.e. Enter a number from [1 to 2]
----------------------------------------------
#? 1

Selected Instance: [ ORCL21C ]


LAST 14 DAYS RMAN BACKUP DETAILS:
--------------------------------

Enter the BACKUP Location: [e.g. /backup/RMAN]
=========================
/u02/Backup

RMAN Backup will be saved under: /u02/Backup/RMANBKP_ORCL21C/10-Apr-23

How many CHANNELS do you want to allocate for this backup? [0 CPUs Available On This Machine]
=========================================================
4

Number Of Channels is: 4

---------------------------------------------
COMPRESSED BACKUP will allocate SMALLER space
but it's a bit SLOWER than REGULAR BACKUP.
---------------------------------------------

Do you want a COMPRESSED BACKUP? [Y|N]: [Y]
================================
N

Do you want to ENCRYPT the BACKUP by Password? [Available in Enterprise Edition only] [Y|N]: [N]
==============================================
N
RMAN BACKUP SCRIPT CREATED.

Backup Location is: /u02/Backup/RMANBKP_ORCL21C/10-Apr-23

Starting Up RMAN Backup Job ...


 The RMAN backup job is currently running in the background. Disconnecting the current session will NOT interrupt the backup job :-)
 Now, viewing the backup job log:
.
.
.
````

