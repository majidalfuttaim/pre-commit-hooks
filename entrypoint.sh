#! /bin/sh

cd -P "$( dirname "$1" )"
python "$( basename "$1" )"
echo "Diagram created/updated for file $( basename "$1" )"
