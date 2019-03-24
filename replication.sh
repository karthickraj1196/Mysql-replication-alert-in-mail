:'
author: Pushparajkarthick D(NPI) written at 24-03-2019
'
set -x;
###########Sysconfig################
mysql -u root -h 10.102.4.17 -pS1r00T -P 3401  -e "show slave status\G" > /opt/SCRIPTS/3401.txt 

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3401.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3401.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3401" | mail -s "Replication Status-SCI-sysconfig" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi
########33Brecken#############
mysql -u root -h 10.102.4.17 -pS1r00T -P 3318 -e "show slave status\G" > /opt/SCRIPTS/3318.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3318.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3318.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3318" | mail -s "Replication Status-SCI-brecken" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi
###########forms############
mysql -u root -h 10.102.4.17 -pS1r00T -P 3202 -e "show slave status\G" > /opt/SCRIPTS/3202.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3202.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3202.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3202"  | mail -s "Replication Status-SCI-forms" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi
##########insall###########

mysql -u root -h 10.102.4.17 -pS1r00T -P 3305 -e "show slave status\G" > /opt/SCRIPTS/3305.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3305.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3305.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3305" | mail -s "Replication Status-SCI-insallconfig" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

#########liberty###########

mysql -u root -h 10.102.4.17 -pS1r00T -P 3308 -e "show slave status\G" > /opt/SCRIPTS/3308.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3308.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3308.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3308"  | mail -s "Replication Status-SCI-liberty" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

#############botice############


mysql -u root -h 10.102.4.17 -pS1r00T -P 3338 -e "show slave status\G" > /opt/SCRIPTS/3338.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3308.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3308.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3338"  | mail -s "Replication Status-SCI-Notice" -r qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi


########rebshare#############

mysql -u root -p -h 10.102.4.17 -pS1r00T -P 3317 -e "show slave status\G" > /opt/SCRIPTS/3317.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3317.txt  | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3317.txt  | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3317"  | mail -s "Replication Status-SCI-Rebshare" - qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

###########3cache##########


mysql -u root -p -h 10.102.4.17 -pS1r00T -P 3201 -e "show slave status\G" > /opt/SCRIPTS/3201.txt

IO_status=$(grep -E "Slave_IO_Running:"  /opt/SCRIPTS/3201.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3201.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3201" | mail -s "Replication Status-SCI-Cache" - qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

#########CvStarr##########



mysql -u root -p -h 10.102.4.17 -pS1r00T -P 3307 -e "show slave status\G" > /opt/SCRIPTS/3307.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3307.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3307.txt  | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3307"  | mail -s "Replication Status-SCI-CVstarr" - qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi


###########thirddpart#########


mysql -u root -p -h 10.102.4.17 -pS1r00T -P 3387  -e "show slave status\G" > /opt/SCRIPTS/3387.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3387.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3387.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3387"  | mail -s "Replication Status-SCI-3rdParty" - qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

mysql -u root -p -h 10.102.4.17 -pS1r00T -P 3301 -e "show slave status\G" > /opt/SCRIPTS/3301.txt

IO_status=$(grep -E "Slave_IO_Running:" /opt/SCRIPTS/3301.txt | cut -d: -f2)
SQL_status=$(grep -E "Slave_SQL_Running:" /opt/SCRIPTS/3301.txt | cut -d: -f2)

if [ $IO_status == No ] || [ $SQL_status == No ];then

echo "Replication is failed in 10.102.4.17:3301" | mail -s "Replication Status-SCI-allrisks" - qaserver@solartis.com pushparajkarthick_d@solartis.com durairaj_c@solartis.com venkatasubramani_h@solartis.com kavikumar_d@solartis.com bharathvajan_m@solartis.com pugalenthi_s@solartis.com sushil_r@solartis.com sriramsundar_sm@solartis.com

else
echo "Running Successfully"
fi

