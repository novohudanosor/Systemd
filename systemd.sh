#!/bin/bash

log_parsing() {
     cp /root/systemd/watchlog.sh /opt/
     cp /root/systemd/watchlog.service /etc/systemd/system/
     cp /root/systemd/watchlog.timer /etc/systemd/system/
     cp /root/systemd/watchlog.log /var/log/
     cp /root/systemd/watchlog /etc/sysconfig/
     systemctl daemon-reload
     systemctl enable watchlog.service
     systemctl enable watchlog.timer
     systemctl start watchlog.timer
}

main() {
	log_parsing
}

[[ "$0" == "$BASH_SOURCE" ]] && main "$@"
