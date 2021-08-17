for i in `ls *.log.1`
do
f=`echo $i | awk -F '.' '{print $1}'`
f+='-'
dt=`date +%d-%m-%Y | awk -F '-' '{print $1 $2 $3}'`
mv $i $f$dt'.log'
done
