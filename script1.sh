#!/bin/bash

# Kontrola, zda byl zadán soubor jako argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Získání názvu souboru ze vstupního argumentu
filename="$1"

# Počet slov
word_count=$(wc -w < "$filename")

# Počet řádků
line_count=$(wc -l < "$filename")

# Počet znaků
char_count=$(wc -c < "$filename")

# Výstup
echo "Soubor: $filename"
echo "Počet slov: $word_count"
echo "Počet řádků: $line_count"
echo "Počet znaků: $char_count"

