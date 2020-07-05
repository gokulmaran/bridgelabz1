#!/bin/bash -x
function check(){
local c=$1
patf="^[A-Z]{1}[a-z]{2}"
if [[ $c =~ $patf ]]
 then
 echo "valid"
 else
 echo "Invalid"
fi
}
function mail(){
m=$1
patm="^[0-9A-Za-z]+([.][0-9A-Za-z]+)*@[0-9A-Za-z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})*$"
if [[ $m =~ $patm ]]
 then
 echo "valid mail-Id"
 else
 echo "Invalid mail-Id"
fi
}
function mobile(){
mo=$1
patmo="^[91]{1}[  ]{1}[6-9]{1}[0-9]{9}$"
if [[ $mo =~ $patmo ]]
 then
 echo "valid"
 else
 echo "Invalid"
fi
}
shopt -s extglob
echo "Enter First Name "
read first
check $first
echo "Enter Last Name "
read last
check $last
echo "Enter Mail-Id"
read mal
mail $mal
echo "Enter Mobile number "
read mob
mobile $mob
