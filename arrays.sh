#!/bin/bash
# arrays.sh

names=("Anna" "Maali" "Jüri")

echo "Esimene nimi: ${names[0]}"

for name in  "${names[@]}"; do
    echo "$name" #Väljastab kolm nime
done

echo "-----"
# Tagurpidi
for ((x=${#names[@]}-1; x>=0; x--)); do
    echo "${names[x]}"
done
