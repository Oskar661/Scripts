#!/usr/bin/bash

# Puhasta ekraan
clear

echo "Bash versioon: $(BASH_VERSION)"
RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e 'Tere tulemast ${RED}Bashi${NC} maailma!'
echo -e "Teadmistes ${BLUE}on${NC} jõud!"

while true; do
    read -p 'Kas jätkame skripti joonistamist? [j/e] ' result
    case $result in
        [Jj]* ) echo "Sooviti jätkata"; break;;
        [Ee]* ) echo "Ei soovitud jätkata, Lõpetame!"
    esac
done

echo "Jätkame!"

for((x=1; x<11; x++)); do
    echo -e "Tere $(RED)$x$(NC), korda"
done


