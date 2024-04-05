#! /bin/sh

cd -P "$( dirname "$1" )"
python "$( basename "$1" )"
ls *.png | xargs git add
