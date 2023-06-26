#!/usr/bin/expect

spawn scp dist/51la.js root@154.12.36.xxx:/root/51la/
expect "*password:"
send "xxx\r"

interact

spawn ssh root@154.12.36.215
expect "*password:"
send "xxx\r"
expect "*#"
send "ls -l\r"
# 第一次启动
#send "pm2 start /root/51la/51la.js --name 51la\r"
send "pm2 restart 51la\r"
interact

