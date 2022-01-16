#!/bin/bash
list=names.lst
while read line
do
    mkdir home/"$line"
    mkdir home/"$line"/config
    mkdir home/"$line"/src
    touch home/"$line"/src/README.md
    echo "# Source folder" > home/"$line"/src/README.md
    echo "" >> home/"$line"/src/README.md
    echo "This is the folder where you can keep your projects." >> home/"$line"/src/README.md
    touch home/"$line"/config/profile
    echo "export NAME='"$line"'" > home/"$line"/config/profile
    echo "export PS1='"$line" \w $ '" >> home/"$line"/config/profile
done < $list