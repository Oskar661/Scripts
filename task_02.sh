#!/bin/bash

# Kontrollime, kas kasutaja sisestas laiendi käsurea parameetrina
if [ -z "$1" ]; then
    echo "Kasutamine: $0 [laiend]"
    exit 1
fi

EXT=$1
FILE="random.txt"

# Kontrollime, kas algfail on üldse olemas
if [ ! -f "$FILE" ]; then
    echo "Viga: Faili $FILE ei leitud!"
    exit 1
fi

# Loeme kokku esinemised. 
# grep -c loeb ridade arvu, kus laiend esineb.
COUNT=$(grep -c "\.$EXT$" "$FILE")

if [ "$COUNT" -gt 0 ]; then
    echo "Leiti $COUNT faili laiendiga .$EXT"
else
    echo "Laiendit .$EXT ei leitud."
fi