#!/bin/sh

expect -c "
set timeout 5
spawn bin/xmr-stak 

expect \"'aeon'\"
send \"monero\n\"

expect \"pool.usxmrpool.com:3333\"
send \"pool.supportxmr.com:3333\n\"

expect \"(wallet address or pool login):\"
send \"42QdiPLCJUdThHZgeFViq25WbPRz1VnJ4TaEpBc92DpPEuAD5LujHEA4Uz4av6eLyuCPD9ahrYHWnYQW8tmcrekX5ZUDQJK\n\"

expect \"(mostly empty or x):\"
send \"worker\n\"

expect \"(y/N)\"
send \"N\n\"

expect \"(y/n)\"
send \"y\n\"

expect \"(y/n)\"
send \"n\n\"
send \"sleep 5\n\"

expect \"$\"
"
