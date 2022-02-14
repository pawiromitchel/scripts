#!/bin/bash

# IMPORTANT: filename must me <database>.sql or <database>.sql.gz (gzipped / compressed)

# folder path
DATABASEDUMPS="$(ls /root/backup/)"

for dump in $DATABASEDUMPS
do
  dumpfileparts=$(echo $dump | tr "." "\n")
  for part in $dumpfileparts
  do
    if [ "$part" == "sql" ] || [ "$part" == "gz" ]; then
     continue
    else
      echo "Now restoring $part"
      gunzip < /root/backup/$part.sql.gz | mysql -p $part
      echo "$part restored successfully"
    fi
  done
done

