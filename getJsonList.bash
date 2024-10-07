#!/opt/homebrew/bin/bash
source ./getTokenFromApi.bash
source ./getChainNameFromId.bash

chain=$(getChainNameFromId $1)
outputArr='[]'
readarray arr < $2
for i in ${arr[@]}
do
    checksummedAddress=$(node ./index.js $i)
    apiTokenData=$(getTokenFromApi $chain $checksummedAddress)
    apiTokenData=$(jq ".chainId=$1" <<< $apiTokenData)
    outputArr=$(echo $outputArr | jq ". += [$apiTokenData]")
done

echo ${outputArr[@]}
