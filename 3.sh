#!/bin/sh

for file in *
do
    if [ -f $file ]
    then
        permission=$(stat -c '%A' "$file")
        
        link_existence="No"
        if [ -h $file ]
        then
            link_existence="Yes"
        fi
        size=$(stat -c '%s' "$file")

        Link_count=$(stat -c '%h' "$file")

        echo "file: $file, permission: $permission, Link existence: $link_existence, size: $size bytes, link count: $Link_count"
    fi
done


# Output:-
# file: 3.sh, permission: -rwxr-xr-x, Link existence: No, size: 442 bytes, link count: 1
