crontab -l
cat /proc/cpuinfo
cat /proc/meminfo
/etc/init.d/FAHClient start
/etc/init.d/FAHClient status
timeout 30s /etc/init.d/FAHClient log > log.txt 2>&1
while true; do tail -n 100 log.txt; echo "sleeping"; sleep 20m; done