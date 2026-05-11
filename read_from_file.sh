#!/usr/bin/bash
# read_from_file.sh

file_name="$1" # Filinimi käsurealt

if [ -f "$file_name" ]; then
    echo "Fail olemas!" # TESt!!
    extensions=() # Tühi laiendite massiiv
    while IFS='' read -r line; do
        if [ ! -z "$line" ]; then
            extensions+=("$line")
        fi
    done < "$file_name"
    echo "Laiendid kokku: ${#extensions[@]}"
    #Väljasta siia kõik leitud laiendid ühel real!
    #txt, bat,exe, ...
    output=""
    for ext in "${extensions[@]}"; do
        if [ -z "$output" ]; then
            output="$ext"
        else
            output="$output, $ext"
        fi
    done
    echo "Laiendid: $output"
    # ÜLESANNE 2: Väljasta üks juhuslik laiend massiivist extensions
    random_index=$((RANDOM % ${#extensions[@]}))
    echo "Juhuslik laiend: ${extensions[$random_index]}"

else
    echo "Käsurealt argument puudub!"
fi