#!/bin/bash

#Install packages that are required to run the custom metrics
sudo yum install perl-Switch perl-DateTime perl-Sys-Syslog perl-LWP-Protocol-https perl-Digest-SHA --enablerepo="rhui-REGION-rhel-server-optional" -y
sudo yum install zip unzip -y
#Checks if zip file already exists on the machine;
if [ ! -d aws-scripts-mon ]; then
  curl https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.2.zip -O
  unzip CloudWatchMonitoringScripts-1.2.2.zip
  rm CloudWatchMonitoringScripts-1.2.2.zip
fi
cd aws-scripts-mon
#write out current crontab to temporary file
crontab -l > mycron
#echo new cron into cron file
echo "*/5 * * * * ~/aws-scripts-mon/mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --mem-used --mem-avail" >> mycron
#install new cron file
crontab mycron
#delete temporary file
rm mycron
echo "Custom metric is configured on machine!"
