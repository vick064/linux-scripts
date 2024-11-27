echo "Linux project cpu usage"
echo "-----------------------"
echo "CPU Usage"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'
echo ""
echo "Memory usage"
free -h | awk  '/^Men:/ {print "Used: " $3 ", Free: " $4}'
echo ""
echo "Disk Space"
def -h | awk '$NF=="/" {print "Used: " $3 ", Available: " $4}'
echo ""
echo "System Uptime:"
uptime -p
