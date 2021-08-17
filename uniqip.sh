cat access.log | awk -F\" '{print $8}'| sort -n | uniq -c | sort -r | head -4
