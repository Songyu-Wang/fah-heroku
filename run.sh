echo "30 * * * * timeout 30s /etc/init.d/FAHClient log > /log.txt 2>&1" | crontab -
crontab -l
lscpu | grep -E '^Thread|^Core|^Socket|^CPU\('
/etc/init.d/FAHClient start
/etc/init.d/FAHClient status
timeout 30s /etc/init.d/FAHClient log > log.txt 2>&1
while true; do tail -n 100 log.txt; echo "sleeping"; sleep 20m; done