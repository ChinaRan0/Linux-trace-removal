#!/bin/bash
echo "">/var/log/wtmp   #清理登陆记录 
history -c
echo "">/var/log/btmp   #清除错误登陆信息
history -c
echo "">/var/log/utmp   #删除已登录用户信息
history -c
cat /dev/null >  /var/log/secure    #清除安全日志
history -c
cat /dev/null >  /var/log/message   #清除系统日志
history -c
echo "Clean Yes"