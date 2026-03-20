# Use an Ubuntu base (or whatever you want)
FROM ubuntu:22.04

# Install required packages (e.g., mail server, etc.)
RUN apt-get update && \
    apt-get install -y dovecot-core dovecot-imapd dovecot-pop3d

# Copy your mail content
COPY mailcontent.txt /home/mail/mailcontent.txt

# Copy your maildir if needed
COPY maildir /home/mail/maildir

# Expose the POP3 port
EXPOSE 110

# Default command to start the service
CMD ["dovecot", "-F"]
