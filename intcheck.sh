
#!/bin/bash
t1=$(ifconfig | grep -o enp0s31f6)
t2='enp0s31f6'

if [ "$t1" = "$t2" ]; then
  echo "enp0s31f6 up"
else
  echo "enp0s31f6 down"
fi

exit
