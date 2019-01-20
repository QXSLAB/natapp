#! /bin/bash
ps -ef | grep natapp |grep -v grep >> log
if test $? != 0
then
    echo $(date +%F-%R) "natapp is restarted" >> log
    /etc/init.d/natapp restart
else
    echo $(date +%F-%R) "natapp is running" >> log
fi
#if test $? = 0; then echo "runing" >> log; else echo "stoped" >> log; fi
