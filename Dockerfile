# Starten van bestaande image
FROM php:8.0-apache

# Update de advanced packaging tool
# RUN apt update?

# Als een tijdzone ingesteld moet worden
ENV DEBIAN_FRONTEND=noninteractive

# Valt weg
#RUN cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime

# Kopieer inhoud van de huidige directory ( waarin dockerfile zich bevind ).
# Maak die directory de huidige 'working directory'
COPY . /var/www/html/
WORKDIR /var/www/html/

# Zichtbaar maken via tcp-poort 80
EXPOSE 80/tcp

# Commando 'service' opstarten en runnen in bash (in afwachting van input - bash)
CMD service apache2 start && bash