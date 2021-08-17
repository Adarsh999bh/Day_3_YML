if [ -d "Backup" ]
then
rm -rf Backup
mkdir Backup
else
mkdir Backup
fi
for i in  `ls /var/log/*.log`
do
modified_date=`stat $i | grep -i "modify" | awk '{print $2}'`
present_date=`date +%Y-%m-%d`
# sudo apt install dateutils  for below operation
diff=`dateutils.ddiff $modified_date $present_date`
if [ $diff -gt 7 ]
then
cp $i Backup
fi
done
