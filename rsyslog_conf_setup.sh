#!/bin/bash
printf "\nSetting up syslog server settings...\n"
echo "\$template RemoteLogs,\"/var/log/%HOSTNAME%/%PROGRAMNAME%.log\"" >> /etc/rsyslog.conf
echo "*.* ?RemoteLogs" >> /etc/rsyslog.conf
echo "& ~" >> /etc/rsyslog.conf
