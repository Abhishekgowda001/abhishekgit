 #!/bin/bash

sed '1d' $1 > gvag
while read line
 do
 age=`echo "$line" | awk -F " " '{print $3}'`
  if [ $age -eq $2 ]
 then
 echo "$line" | awk -F " " '{print $1}'
else
  echo "age not found"
fi
done < gvag
