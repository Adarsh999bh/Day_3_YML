cat data.csv | awk '$4>10000 {print$2 " " $7}'
cat data.csv | awk '$4>10000 {print$0}'
cat data.csv | awk '$4>10000 {print$0}'| awk '{print $2"    "$7}'
cat data.csv | grep CAPTAIN|awk '{sum=sum+$7} END{print sum}'
cat data.csv | grep CAPTAIN|awk '{sum=sum+$7} END{print sum}'
cat data.csv | awk '$5>7000 && $5<10000 {print $3 " " $5}'
tail +2 data.csv | awk '{sum+=$4} END{print sum/NR}'
