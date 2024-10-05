echo "Computer Information Report" > report.txt
echo =====Start Date and Time===== >> report.txt
date >> report.txt
echo =====System Information===== >> report.txt
uname -a >> report.txt
echo =====Network Interfaces===== >> report.txt
ifconfig -a >> report.txt
echo =====Network Statistics===== >> report.txt
netstat -ano >> report.txt
echo =====Processes===== >> report.txt
ps axu >> report.txt
echo =====Routing Table===== >> report.txt
route -n >> report.txt
echo =====End Date and Time===== >> report.txt
date >> report.txt
