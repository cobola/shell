#!/bin/bash
targetpath='/big/backup/mongobak'
nowtime=$(date -d '-7 days' "+%Y%m%d")
if [ -d "${targetpath}/${nowtime}/" ]
then
  rm -rf "${targetpath}/${nowtime}/"
  echo "=======${targetpath}/${nowtime}/===删除完毕=="
fi
echo "===$nowtime ==="
