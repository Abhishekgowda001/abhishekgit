#!/bin/bash

echo "chose bellow opt"
echo -e "1) SEARCHWORD\n2) CHECKNAME\n3) FINDFILES\n4) CREAT SOFTLINK\n5) EDIT FILE\n6) EXIT"
echo "enter number to chouse"
read num
 case $num in
   1) echo "enter word to search"
      read word
      grep -l -R "$word" * > wordlog
     if [ $? -eq 0 ] 
       then
      cat wordlog
       else 
     echo "word is not found in any file"
      fi
    rm wordlog
    ./checkscrpt.sh
      ;;
   2) /home/ec2-user/shellscripts/filech.sh
         ./checkscrpt.sh
     ;;
   3) echo "enter name to find"
       read file
      find /home/ec2-user -iname "$file" > filecheck
      if [ -s filecheck ]
        then
       echo "file found in bellow location"
       cat filecheck
       else 
        echo "file not found"
      fi
     rm filecheck
       ./checkscrpt.sh
    ;;
   4)echo "enter filename to creat link"
       read file
      if [ ! -f $file ]
         then
          echo "file not exist"
        exit 1
       fi
     
     echo "enter link name"
       read link
     if [ -L $link ]
        then
        echo "link not created because link $link is alrady there"
        exit 1 
         fi
      
     ln -s $file $link
      if [ $? -eq 0 ]
         then
         echo "link $link is created "
         ls -lrt
      fi 
     ./checkscrpt.sh
       ;;
    5) echo "enter file to edit"
       read file
      if [ -f $file ]
        then
       vi $file
      fi
./checkscrpt.sh
       ;;
    *) echo "you got exited"
       ;;
    esac
