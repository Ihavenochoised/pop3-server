#!/bin/bash

cat mailcontent.txt > maildir/new/0MXLgA-1AB2Ru34ja

docker build . -t mail

vol=$PWD/mail
docker run -v $vol:/home/mail -p 110:110 --rm -it --name mail mail
