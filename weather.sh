#!/bin/sh
. ./config.ini
while :
do
  wget http://6.pogoda.by/26850 1>/dev/null 2>/dev/null
  cat 26850|iconv -f cp1251 -t utf8|grep '"Погода в Минске'|sed 's/<meta name="Description" content="Погода в Минске.   Температура воздуха/ /'| awk '{print $1}'
  sleep $update_time_seconds
done
exit 0
#wget gismeteo.by
#grep 
