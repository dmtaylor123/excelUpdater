#!/bin/bash
#set -xv

outfile=output.txt
if [[ -f $outfile ]]
then
  rm -f $outfile
fi

if [[ -z $1 ]]
then
  echo "You must supply the path to the log input files, i.e. /home/username (no trailing '/')"
  exit -1
fi

list=`ls $1/*.log | tr '\012' ' '`
for item in $list
do
  found=0
  while read -r line
  do
    if [[ found -eq 0 ]]
    then
      if [[ $line =~ "sh cdp nei" ]]
      then
        found=1
      fi
    fi

    if [[ $found -eq 1 ]]
    then
      if [[ ($line =~ "sh ") && (! $line =~ "sh cdp nei") ]]
      then
        break
        else
          echo $line >> $outfile
        fi
    fi

  done < $item
done

exit 0
