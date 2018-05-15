#!/bin/bash
./mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --mem-used --mem-avail

#Run the script every 5 minutes
*/5 * * * * ~/aws-scripts-mon/mon-put-instance-data.pl --mem-used-incl-cache-buff --mem-util --mem-used --mem-avail

#web link
https://stackoverflow.com/questions/878600/how-to-create-a-cron-job-using-bash-automatically-without-the-interactive-editor?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
