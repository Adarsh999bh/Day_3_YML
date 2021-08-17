for file in `ls *.txt`
do
 basename=`echo $file | awk -F. '{print $1}'`
 if [ -d $basename ]
 then
    echo "folder exist"
    rm -r $basename
 fi
 echo "creating folder of $basename"
 mkdir $basename
 mv $file $basename
done
