#!/bin/bash
files="*.md"
regex="https?://(www\.)?(\w+)(\.\w+)"
simple="[0-9]"
for f in $files
do
    echo "$f"
    if [[ $f =~ $simple ]]; then
        www="${BASH_REMATCH[1]}"
        domain="${BASH_REMATCH[2]}"
        extension="${BASH_REMATCH[3]}"
    else
        echo "no match"
    fi
done
