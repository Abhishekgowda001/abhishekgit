#!/bin/bash

echo "bellow is food menu"
echo -e  "1) idly\n2) dosa\nc)exit"
echo "chose any in above menu"
read num
 case $num in
   1) echo "chose verites"
      echo -e  "a) rava idly = 50rs\nb) tatte idly = 60rs\nc) button idly = 40rs"
      echo "chose any"
       read opt
      if [ $opt == a ]
        then
  echo "                   bill total = 50/-"
      elif [ $opt == b ]
        then
  echo "                   bill total = 60/-"
      elif [ $opt == c ]
        then
  echo "                   bill total = 40/-"
       elif [ $opt == ab ]
         then
    echo "                 bill total = 110/-"
      elif [ $opt == ac ]
         then
    echo "                 bill total = 90/-"
      elif [ $opt == bc ]
         then
    echo "                 bill total == 100/-"
      elif [ $opt == abc ]
then
      echo "               bill total = 150/-"
       fi
./hotel.sh
    ;;

  2) echo "chose verites"
     echo -e "a) masala dosa = 70rs\nb) pline dosa = 50rs\nc) pudi dosa = 80rs "
      echo "chose any"
      read opt
      if [ $opt == a ]
    then
  echo "                  bill total = 70/-"
    elif [ $opt == b ]
     then
    echo "                bill total = 50/-"
  elif [ $opt == c ]
    then
   echo "                 bill total = 80/-"
    elif [ $opt == ab ]
      then
    echo "                bill total = 120/-"
     elif [ $opt == ac ]
     then
    echo "                bill total = 150/-"
      elif [ $opt == bc ]
     then 
 echo "                   bill total = 130/-"
   elif [ $opt == abc ]
then
   echo "                 bill total = 200/-"
   fi
./hotel.sh
    ;;
   
c) echo "               see you again....bye!!"
 ;;
esac
