FROM sunx/mailserver

# User + mailbox
RUN adduser -D vmail
COPY maildir /home/vmail/Maildir
RUN chown -R vmail /home/vmail/Maildir
