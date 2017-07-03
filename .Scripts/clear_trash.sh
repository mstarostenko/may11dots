#!/usr/bin/env bash
mkdir -p /home/mstarostenko/TEMP/trashclear
touch /home/mstarostenko/TEMP/trashclear/log.txt

echo 'test' >> /home/mstarostenko/TEMP/trashclear/log.txt
date >> /home/mstarostenko/TEMP/trashclear/log.txt

while [ 1 ]; do
    echo ":)"
done
