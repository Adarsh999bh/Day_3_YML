cat access.log | awk '{print $4, $7}' | cut -c 14-15,22- | awk '$1 == 12 {print $2}' | sort -n | uniq -c | sort -r | head -4
