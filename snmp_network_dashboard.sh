
 r1Contact=$(snmpget -v 1 -c public 198.51.100.4 1.3.6.1.2.1.1.4.0|cut -d : -f 4)
 r1Name=$(snmpget -v 1 -c public 198.51.100.4 1.3.6.1.2.1.1.5.0|cut -d : -f 4)
 r1Location=$(snmpget -v 1 -c public 198.51.100.4 1.3.6.1.2.1.1.6.0|cut -d : -f 4)
 r1Number=$(snmpget -v 1 -c public 198.51.100.4 1.3.6.1.2.1.2.1.0|cut -d : -f 4)
 r1Uptime=$(snmpget -v 1 -c public 198.51.100.4 1.3.6.1.2.1.1.3.0|cut -d ')' -f 2)
 echo "Network Management Dashboard"
 echo "----------------------------\n"
 echo "SNMP v1"
 echo "----------------------------"
 echo "Name:" $r1Name 
 echo "Contact:" $r1Contact
 echo "Location:" $r1Location
 echo "Number:" $r1Number
 echo "Uptime:" $r1Uptime

 r2Contact=$(snmpget -v 2c -c public 198.51.100.22 1.3.6.1.2.1.1.4.0|cut -d : -f 4)
 r2Name=$(snmpget -v 2c -c public 198.51.100.22 1.3.6.1.2.1.1.5.0|cut -d : -f 4)
 r2Location=$(snmpget -v 2c -c public 198.51.100.22 1.3.6.1.2.1.1.6.0|cut -d : -f 4)
 r2Number=$(snmpget -v 2c -c public 198.51.100.22 1.3.6.1.2.1.2.1.0|cut -d : -f 4)
 r2Uptime=$(snmpget -v 2c -c public 198.51.100.22 1.3.6.1.2.1.1.3.0|cut -d ')' -f 2)

 echo "----------------------------\n"
 echo "SNMP v2"
 echo "----------------------------"
 echo "Name:" $r2Name 
 echo "Contact:" $r2Contact
 echo "Location:" $r2Location
 echo "Number:" $r2Number
 echo "Uptime:" $r2Uptime
 
 r4Contact=$(snmpget -v 3 -u user1 -a MD5 -A netman123 -l authNoPriv 198.51.100.24 .1.3.6.1.2.1.1.4.0|cut -d: -f4)
 r4Name=$(snmpget -v 3 -u user1 -a MD5 -A netman123 -l authNoPriv 198.51.100.24 .1.3.6.1.2.1.1.5.0|cut -d: -f4)
 r4Location=$(snmpget -v 3 -u user1 -a MD5 -A netman123 -l authNoPriv 198.51.100.24 .1.3.6.1.2.1.1.6.0|cut -d: -f4) 
 r4Number=$(snmpget -v 3 -u user1 -a MD5 -A netman123 -l authNoPriv 198.51.100.24 .1.3.6.1.2.1.2.1.0|cut -d: -f4)
 r4Uptime=$(snmpget -v 3 -u user1 -a MD5 -A netman123 -l authNoPriv 198.51.100.24 .1.3.6.1.2.1.1.3.0|cut -d ')' -f2)

 echo "----------------------------\n"
 echo "SNMP v3"
 echo "----------------------------"
 echo "Name:" $r4Name 
 echo "Contact:" $r4Contact
 echo "Location:" $r4Location
 echo "Number:" $r4Number
 echo "Uptime:" $r4Uptime
