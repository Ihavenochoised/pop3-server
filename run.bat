type mailcontent.txt > maildir\new\0MXLgA-1AB2Ru34ja

docker build . -t mail

docker run -v %cd%\mail\:/home/mail -p 110:110 --rm -it --name mail mail
