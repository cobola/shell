#!/bin/bash
sourcepath='/usr/bin'
targetpath='/big/backup/mongobak'
nowtime=$(date +%Y%m%d)
 
start()
{
  ${sourcepath}/mongodump -d dbname --host 127.0.0.1 --port 27017 --out ${targetpath}/${nowtime}
}
execute()
{
  start
  if [ $? -eq 0 ]
  then
    echo "back successfully!"
  else
    echo "back failure!"
  fi
}
 
if [ ! -d "${targetpath}/${nowtime}/" ]
then
 mkdir ${targetpath}/${nowtime}
fi
execute
echo "============== back end ${nowtime} =============="
