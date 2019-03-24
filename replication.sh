:'
author: Pushparajkarthick D(NPI) written at 24-03-2019
'
set -x;
###########Sysconfig################
mysql -u "mysql_user" -h "mysql_host" -p"mysql_password" -P "mysql_port"  -e "show slave status\G" > /opt/SCRIPTS/3401.txt 

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3401.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3401.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed" | mail -s "Replication Status-SCI-sysconfig" -r qaserver@solartis.com pushparajkarthick_d@solartis.com

else
echo "Running Successfully"
fi
