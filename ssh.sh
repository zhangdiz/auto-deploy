#!/usr/bin/expect
spawn ssh root@154.12.36.xxx
expect "*password:"
send "xxx\r"
expect "*#"
interact

