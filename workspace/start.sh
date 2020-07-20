#!/bin/bash

service cron start
service rsyslog start
service supervisor start

tail -f /dev/null