#! /bin/bash -x


#WAP to check employee is present or absent use random and if condition
a=$(( RANDOM%2 ))
if [ $a -eq 0 ]
then
      echo "employee is absent"
else [ $a -eq 1 ]
      echo "employee is present"
fi

