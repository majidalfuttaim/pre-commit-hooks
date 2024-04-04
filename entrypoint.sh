#! /bin/sh

echo $1
cd -P "$( dirname "$1" )"
pwd
ls
echo $1
python "$( basename "$1" )"
	
