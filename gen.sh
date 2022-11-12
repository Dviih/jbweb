#! /usr/bin/env bash

if [[ -z $1 ]]; then
    echo "No 'app' set!";
    exit 1;
fi

if [[ -z $2 ]]; then
    echo "No 'app_ver' set!";
    exit 1;
fi

if [[ -z $3 ]]; then
    echo "No 'password' set!";
    exit 1;
fi

if [[ -z $4 ]]; then
    echo "No 'res' set!";
    echo "'res' set to '1920x1080'!";
    res="1920x1080";
else
    res=$4
fi

app=$1
app_ver=$2
password=$3

path=$(pwd)
rm -rf $path/dist
mkdir $path/dist
cp $path/src/* $path/dist/

for file in $(ls -p $path/src | grep -v /);
do
    sed -i "s/%app/$app/" $path/dist/$file
    sed -i "s/%app_ver/$app_ver/" $path/dist/$file
    sed -i "s/%password/$password/" $path/dist/$file
    sed -i "s/%res/$res/" $path/dist/$file
done

