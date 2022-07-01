eval `awk '/^Environment:/ {p=1;next} /^[^=]+$/ && p==1 {p=0} p==1 && $0!="" {print "export"$0";"}' /var/lib/dpkg/status`
