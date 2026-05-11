#!/bin/bash

SOURCE="laiendid.txt"
DEST="random.txt"

# 1. Kontrollime, kas algfail on olemas
if [ ! -f "$SOURCE" ]; then
    echo "Viga: Faili $SOURCE ei leitud!"
    exit 1
fi

# 2. Võtame suvalise rea ja lisame faili lõppu (>> tähendab append)
shuf -n 1 "$SOURCE" >> "$DEST"