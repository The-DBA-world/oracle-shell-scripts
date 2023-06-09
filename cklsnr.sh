#######################################################################
## cklsnr.sh                                                         ##
#######################################################################
#!/bin/ksh
DBALIST="primary.dba@company.com, another.dba@company.com";export DBALIST
cd /var/opt/oracle
rm -f lsnr.exist
ps -ef | grep mylsnr | grep -v grep  > lsnr.exist
if [ -s lsnr.exist ]
then
echo
else
echo "Alert" | mailx -s "Listener 'mylsnr' on `hostname` is down" $DBALIST
TNS_ADMIN=/var/opt/oracle; export TNS_ADMIN
ORACLE_SID=db1; export ORACLE_SID
ORAENV_ASK=NO; export ORAENV_ASK
PATH=$PATH:/bin:/usr/local/bin; export PATH
. oraenv
LD_LIBRARY_PATH=${ORACLE_HOME}/lib;export LD_LIBRARY_PATH
lsnrctl start mylsnr
fi
