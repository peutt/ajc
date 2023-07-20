#!/bin/bash
mavariable1=1
echo "Dans shell1, mavariable1 est : $mavariable1"
. ./shell2.sh # permet de faire une inclusion du shell2 dans shell1
# ce qui suit permet de transmettre la variable dans le shell2
# export mavariable1
#./shell2.sh
mavariable1=$mavariable2
echo "Dans shell1, mavariable2 est: $mavariable2"
echo "Dans shell1, mavariable1 est maintenant: $mavariable1"

