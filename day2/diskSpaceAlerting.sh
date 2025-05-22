#! /bin/bash

echo "Welcome to disk usage alert system"


if df -h | awk '{gsub("%","",$5)} $5 > 80' | grep -q .; then
  echo -e "\nWarning: High disk usage detected!\n"
  df -h | awk '
    NR > 1 {
      gsub("%", "", $5);
      if ($5 > 80)
        printf "%-s %-s %-s\n", $6, $5"%", $2
    }
  ' | column -t -N "MountPoint","Usage","Size"
else
  echo "All disk usage is under control."
fi

