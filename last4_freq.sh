cat access.log | awk '{print $7}' | sort | uniq -c | sort -r | head -4
