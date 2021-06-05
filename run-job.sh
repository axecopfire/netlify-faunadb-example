#!/bin/bash

# https://phoenixnap.com/kb/set-up-cron-job-linux
# 0 9 * * Mon-Fri /home/axecopfire/code/tmp/netlify-faunadb-example/run-job.sh >/dev/null 2>&1
# */1 * * * * echo "Hello every minute" >> /home/axecopfire/code/tmp/netlify-faunadb-example/tmp

curl https://happy-yalow-a18d8f.netlify.app/.netlify/functions/todos-read-all >> /home/axecopfire/code/tmp/netlify-faunadb-example/tmp
printf "\n---\n" >> /home/axecopfire/code/tmp/netlify-faunadb-example/tmp

# */1 * * * * echo "Hello every minute" > /dev/pts/X
# */1 * * * * echo "Test Script" >> /var/log/crontest.log
# * * * * * echo "Test Script" >> /var/log/crontest.log

# */1 * * * * /home/axecopfire/code/tmp/netlify-faunadb-example/run-job.sh >/dev/null 2>&1