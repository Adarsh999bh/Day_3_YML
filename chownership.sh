echo "---a"
echo `cat /etc/passwd`
echo "---b"
echo `cat /etc/passwd | awk -F ':' '{print $1}'`
echo "---c"
echo `cat /etc/passwd | awk -F ':' '{if ($3>=1000) print $3}'`
echo "---d (doubt)"
echo `cat /etc/passwd | awk -F ':' '{print $6}' | awk -F '/' '{if ($1!="") print $1}'`
echo "---e"
echo `cat /etc/passwd | awk -F ':' '{print $1,$6}'`
