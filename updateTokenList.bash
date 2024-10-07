#!/opt/homebrew/bin/bash

files=$(ls addresslist-*)

for i in ${files[@]}
do
    chainId=${i#*-}
    ./getJsonList.bash $chainId ./$i > output-$chainId
done