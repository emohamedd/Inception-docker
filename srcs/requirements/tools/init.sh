mkdir -p /home/emohamed/data
mkdir -p /home/emohamed/data/mariadb_database
mkdir -p /home/emohamed/data/wordpress_database
mkdir -p ./srcs/requirements/nginx/tools
mkdir -p /home/emohamed/certificat/

# Generate a new self-signed certificate and the corresponding private key
openssl req -x509 -newkey rsa:4096 -keyout /home/emohamed/certificat/key.pem -out /home/emohamed/certificat/cert.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"

cp -r /home/emohamed/certificat/* ./srcs/requirements/nginx/tools