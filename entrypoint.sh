#! /bin/sh

# To fix error "fatal: detected dubious ownership in repository at '/src'"
git config --global --add safe.directory '*'

# Changing dir to generate the diagram in the same directory
cd -P "$( dirname "$1" )"
python "$( basename "$1" )"

# Might add any other png files in the directory as well not intended for commit. 
# Other workaround is to git stash first then run the python generator and do this and then pop.
ls *.png | xargs git add
